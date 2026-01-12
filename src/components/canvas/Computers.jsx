import { Suspense, useEffect, useState } from "react";
import { Canvas } from "@react-three/fiber";
import { OrbitControls, Preload, useGLTF } from "@react-three/drei";

import CanvasLoader from "../Loader";

/* ------------------ Responsive Hook ------------------ */
const useResponsive = () => {
  const [screen, setScreen] = useState("desktop");

  useEffect(() => {
    const updateScreen = () => {
      const width = window.innerWidth;

      if (width <= 480) setScreen("mobile");
      else if (width <= 768) setScreen("tablet");
      else setScreen("desktop");
    };

    updateScreen();
    window.addEventListener("resize", updateScreen);

    return () => window.removeEventListener("resize", updateScreen);
  }, []);

  return screen;
};

/* ------------------ 3D Model ------------------ */
const Computers = ({ screen }) => {
  const computer = useGLTF("./desktop_pc/scene.gltf");

  const modelConfig = {
    mobile: {
      scale: 0.6,
      position: [0, -3.2, -2.5],
    },
    tablet: {
      scale: 0.7,
      position: [0, -3.3, -2],
    },
    desktop: {
      scale: 0.75,
      position: [0, -3.25, -1.5],
    },
  };

  const { scale, position } = modelConfig[screen];

  return (
    <mesh
      onPointerOver={
        screen !== "mobile"
          ? () => (document.body.style.cursor = "move")
          : undefined
      }
      onPointerOut={
        screen !== "mobile"
          ? () => (document.body.style.cursor = "default")
          : undefined
      }
    >
      <hemisphereLight intensity={0.15} groundColor="black" />

      <spotLight
        position={[-20, 50, 10]}
        angle={0.12}
        penumbra={1}
        intensity={1}
        castShadow
        shadow-mapSize={1024}
      />

      <pointLight intensity={1} />

      <primitive
        object={computer.scene}
        scale={scale}
        position={position}
        rotation={[-0.01, -0.2, -0.1]}
      />
    </mesh>
  );
};

/* ------------------ Canvas Wrapper ------------------ */
const ComputersCanvas = () => {
  const screen = useResponsive();

  const cameraConfig = {
    mobile: { position: [15, 3, 5], fov: 28 },
    tablet: { position: [18, 3, 5], fov: 26 },
    desktop: { position: [20, 3, 5], fov: 25 },
  };

  return (
    <Canvas
      frameloop="demand"
      shadows
      dpr={screen === "mobile" ? 1 : [1, 2]}
      camera={cameraConfig[screen]}
      gl={{ preserveDrawingBuffer: true }}
      style={{
        pointerEvents: screen === "mobile" ? "none" : "auto",
      }}
    >
      <Suspense fallback={<CanvasLoader />}>
        <OrbitControls
          enableZoom={false}
          enablePan={false}
          enableRotate={screen !== "mobile"}
          autoRotate={false}
          maxPolarAngle={Math.PI / 2}
          minPolarAngle={Math.PI / 2}
        />

        <Computers screen={screen} />
      </Suspense>

      <Preload all />
    </Canvas>
  );
};

export default ComputersCanvas;
