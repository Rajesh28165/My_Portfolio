import React from "react";

import { BallCanvas } from "./canvas";
import { SectionWrapper } from "../hoc";
import { technologies } from "../constants";

const Tech = () => {
  return (
    <div className="flex flex-row flex-wrap justify-center gap-20">
      {technologies.map((technology) => (
        <div
          key={technology.name}
          className="
                    w-28 h-32 bg-black rounded-lg
                    flex flex-col items-center justify-center
                    shadow-[rgba(0, 0, 0, 0.25) 0px 54px 55px, rgba(0, 0, 0, 0.12) 0px -12px 30px, rgba(0, 0, 0, 0.12) 0px 4px 6px, rgba(0, 0, 0, 0.17) 0px 12px 13px, rgba(0, 0, 0, 0.09) 0px -3px 5px;]
                    hover:shadow-[0_12px_32px_rgba(0,0,0,0.8)]
                    hover:scale-105
                    transition-all duration-200
                  "
        >
          <img
            src={technology.icon}
            alt={technology.name}
            className="w-12 h-12 object-contain"
          />

          <p className="mt-3 text-sm text-white text-center">
            {technology.name}
          </p>
        </div>
      ))}
    </div>
  );
};


export default SectionWrapper(Tech, "");
