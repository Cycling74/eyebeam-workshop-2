let model;
let streamSettings;

async function setupVideo() {
    let video = document.getElementById('videoel');
    return navigator.mediaDevices.getUserMedia({ video: true, audio: false })
    .then(function(stream) {
        video.onloadeddata = runModel;
        video.srcObject = stream;
        streamSettings = stream.getVideoTracks()[0].getSettings();
        video.play();
    })
    .catch(function(err) {
        console.log("An error occurred: " + err);
    });
}

async function runModel() {
    // Load the MediaPipe facemesh model.
    model = await facemesh.load();
  
    // Pass in a video stream (or an image, canvas, or 3D tensor) to obtain an
    // array of detected faces from the MediaPipe graph.
    const predictions = await model.estimateFaces(document.querySelector("video"));
  
    if (predictions.length > 0) {
      /*
      `predictions` is an array of objects describing each detected face, for example:
  
      [
        {
          faceInViewConfidence: 1, // The probability of a face being present.
          boundingBox: { // The bounding box surrounding the face.
            topLeft: [232.28, 145.26],
            bottomRight: [449.75, 308.36],
          },
          mesh: [ // The 3D coordinates of each facial landmark.
            [92.07, 119.49, -17.54],
            [91.97, 102.52, -30.54],
            ...
          ],
          scaledMesh: [ // The 3D coordinates of each facial landmark, normalized.
            [322.32, 297.58, -17.54],
            [322.18, 263.95, -30.54]
          ],
          annotations: { // Semantic groupings of the `scaledMesh` coordinates.
            silhouette: [
              [326.19, 124.72, -3.82],
              [351.06, 126.30, -3.00],
              ...
            ],
            ...
          }
        }
      ]
      */
  
      for (let i = 0; i < predictions.length; i++) {
        const keypoints = predictions[i].scaledMesh;
  
        // Log facial keypoints.
        for (let i = 0; i < keypoints.length; i++) {
            const [x, y, z] = keypoints[i];

            console.log(`Keypoint ${i}: [${x}, ${y}, ${z}]`);
          }
        }
    }

    runloop();
}

function midpoint(p1, p2) {
  return p1.map((p, i) => (p + p2[i]) / 2);
}

async function runloop() {
  const predictions = await model.estimateFaces(document.querySelector("video"));
  
  runloop();

  if (predictions.length > 0) {
    const face = predictions[0];

    // Nose
    const nose = face.annotations.noseTip[0];
    // window.max.outlet.apply(window.max, ["nose"].concat(nose));

    // Mouth Left
    const mouthLeft = face.scaledMesh[61];
    // window.max.outlet.apply(window.max, ["mouthLeft"].concat(mouthLeft));
    
    // Mouth Right
    const mouthRight = face.scaledMesh[291];
    // window.max.outlet.apply(window.max, ["mouthRight"].concat(mouthRight));

    // Mouth Top
    const mouthTop = face.scaledMesh[0];
    // window.max.outlet.apply(window.max, ["mouthTop"].concat(mouthTop));

    // Mouth Bottom
    const mouthBottom = face.scaledMesh[17];
    // window.max.outlet.apply(window.max, ["mouthBottom"].concat(mouthBottom));

    // Left Eye Center
    const leftEye = midpoint(face.scaledMesh[145], face.scaledMesh[159]);
    // window.max.outlet.apply(window.max, ["leftEye"].concat(leftEye));

    // Left Eyebrow
    const leftEyebrow = face.scaledMesh[52];
    // window.max.outlet.apply(window.max, ["leftEyebrow"].concat(leftEyebrow));

    // Right Eye
    const rightEye = midpoint(face.scaledMesh[374], face.scaledMesh[386]);
    // window.max.outlet.apply(window.max, ["rightEye"].concat(rightEye));

    // Right Eyebrow
    const rightEyebrow = face.scaledMesh[282];
    // window.max.outlet.apply(window.max, ["rightEyebrow"].concat(rightEyebrow));

    // Eye Center
    const center = face.scaledMesh[168];
    // window.max.outlet.apply(window.max, ["center"].concat(center));

    const out = ["points"].concat(
      nose, mouthLeft, mouthRight, mouthTop, mouthBottom, leftEye, leftEyebrow, rightEye, rightEyebrow, center
    );

    drawPoints(out.slice(1));

    if (window.max) {
      window.max.outlet.apply(window.max, out);
    }
  }
}

function drawPoints(points) {
  let canvas = document.getElementById("overlay");
  if (canvas.getContext) {
    let ctx = canvas.getContext("2d");
    let xscale = ctx.canvas.width / streamSettings.width;
    let yscale = ctx.canvas.height / streamSettings.height;
    ctx.clearRect(0, 0, ctx.canvas.width, ctx.canvas.height);
    for (let i = 0; i < points.length / 3; i++) {
      const x = points[3 * i] * xscale;
      const y = points[3 * i + 1] * yscale;
      ctx.beginPath();
      ctx.arc(x, y, 3, 0, Math.PI * 2);
      ctx.fillStyle = `hsl(${i  / (points.length / 3) * 360},100%,50%)`;
      ctx.fill();
      ctx.fillText(`${i}`, x + 3, y - 3);
    }
  }
}
  
setupVideo();
