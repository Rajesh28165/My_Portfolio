import React from "react";
import Tilt from "react-parallax-tilt";
import { motion } from "framer-motion";

import { styles } from "../styles";
import { github } from "../assets";
import { SectionWrapper } from "../hoc";
import { projects } from "../constants";
import { fadeIn, textVariant } from "../utils/motion";

const ProjectCard = ({
  index,
  name,
  type,
  description,
  tags,
  image,
  playstore_link,
  appstore_link,
}) => {
  return (
    <motion.div
      variants={fadeIn("up", "spring", index * 0.5, 0.75)}
      className="w-full"
    >
      <Tilt
        options={{
          max: 45,
          scale: 1,
          speed: 450,
        }}
        className="bg-tertiary p-5 rounded-2xl w-full h-full"
      >
        <div className="relative w-full">
          <img
            src={image}
            alt={name}
            className="w-full h-[500px] object-cover rounded-2xl"
          />
        </div>

        <div className="mt-5">
          <h3 className="text-white font-bold text-[24px]">{name}</h3>
          <p className="text-green-400 text-sm mt-1">
            {type}
          </p>
          <p className="mt-2 text-secondary text-[14px]">
            {description}
          </p>
        </div>

        <div className="mt-4 flex flex-wrap gap-2">
          {tags.map((tag) => (
            <p
              key={`${name}-${tag.name}`}
              className={`text-[14px] ${tag.color}`}
            >
              #{tag.name}
            </p>
          ))}
        </div>

        <div className="mt-5 flex gap-3 flex-wrap">
          {playstore_link && (
            <a
              href={playstore_link}
              target="_blank"
              rel="noopener noreferrer"
              className="bg-green-600 px-4 py-2 rounded-lg text-white text-sm"
            >
              Play Store
            </a>
          )}

          {appstore_link && (
            <a
              href={appstore_link}
              target="_blank"
              rel="noopener noreferrer"
              className="bg-blue-600 px-4 py-2 rounded-lg text-white text-sm"
            >
              App Store
            </a>
          )}
        </div>
      </Tilt>
    </motion.div>
  );
};

const Works = () => {
  return (
    <>
      <motion.div variants={textVariant()}>
        <h2 className={`${styles.sectionHeadText}`}>Projects</h2>
      </motion.div>

      <div className='w-full flex'>
        <motion.p
          variants={fadeIn("", "", 0.1, 1)}
          className='mt-3 text-secondary text-[17px] max-w-3xl leading-[30px]'
        >
          Following projects showcases my skills and experience through
          real-world examples of my work. Each project is briefly described. It reflects my
          ability to solve complex problems, work with different technologies,
          and manage projects effectively.
        </motion.p>
      </div>

      <div className="mt-20 grid grid-cols-1 md:grid-cols-2 xl:grid-cols-3 gap-7">
        {projects.map((project, index) => (
          <ProjectCard
            key={`project-${index}`}
            index={index}
            {...project}
          />
        ))}
      </div>
    </>
  );
};

export default SectionWrapper(Works, "");
