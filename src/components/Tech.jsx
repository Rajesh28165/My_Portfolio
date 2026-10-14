import { SectionWrapper } from "../hoc";
import { technologies } from "../constants";
import { motion } from "framer-motion";
import { styles } from "../styles";
import { textVariant } from "../utils/motion";

const Tech = () => {
  return (
    <>
      <motion.div variants={textVariant()}>
        <h2 className={styles.sectionHeadText}>Skills</h2>
      </motion.div>

      <div className="mt-20 flex flex-row flex-wrap justify-center gap-20">
        {technologies.map((technology) => (
          <div
            key={technology.name}
            className="
              w-28 h-32 bg-black rounded-lg
              flex flex-col items-center justify-center
              shadow-[rgba(0,0,0,0.25)_0px_54px_55px,rgba(0,0,0,0.12)_0px_-12px_30px,rgba(0,0,0,0.12)_0px_4px_6px,rgba(0,0,0,0.17)_0px_12px_13px,rgba(0,0,0,0.09)_0px_-3px_5px]
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
    </>
  );
};

export default SectionWrapper(Tech, "tech");