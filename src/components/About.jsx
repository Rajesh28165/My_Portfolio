import Tilt  from "react-parallax-tilt";
import { motion } from "framer-motion";

import { styles } from "../styles";
import { services } from "../constants";
import { SectionWrapper } from "../hoc";
import { fadeIn, textVariant } from "../utils/motion";
import profile from "../assets/profile.png";

const ServiceCard = ({ index, title, icon }) => (
  <Tilt className='xs:w-[250px] w-full'>
    <motion.div
      variants={fadeIn("right", "spring", index * 0.5, 0.75)}
      className='w-full green-pink-gradient p-[1px] rounded-[20px] shadow-card'
    >
      <div
        options={{
          max: 45,
          scale: 1,
          speed: 450,
        }}
        className='bg-tertiary rounded-[20px] py-5 px-12 min-h-[280px] flex justify-evenly items-center flex-col'
      >
        <img  
          src={icon}
          alt='web-development'
          className='w-16 h-16 object-contain'
        />

        <h3 className='text-white text-[20px] font-bold text-center'>
          {title}
        </h3>
      </div>
    </motion.div>
  </Tilt>
);

const About = () => {
  return (
    <>
      <motion.div variants={textVariant()}>
        <h2 className={styles.sectionHeadText}>Introduction</h2>
      </motion.div>

      <div className='mt-4 flex flex-col md:flex-row items-center gap-10'>

        <motion.div
          variants={fadeIn("left", "spring", 0.2, 1)}
          className='flex justify-center items-center'
        >
          <img
            src={profile}
            alt='Rajesh Yadav'
            className='w-48 h-48 md:w-56 md:h-56 rounded-full object-cover border-4 border-white shadow-lg'
          />
        </motion.div>
        <motion.p
          variants={fadeIn("", "", 0.1, 1)}
          className='mt-4 text-secondary text-[17px] max-w-3xl leading-[30px]'
        >
          I’m a software developer passionate about building reliable and user-friendly applications, with a primary focus on mobile development using Flutter. I have experience working on fintech and mobile banking applications, along with web development using Angular. <br/><br/>

          I enjoy solving problems, writing clean and maintainable code, and turning ideas into practical solutions. I also enjoy exploring new tools and approaches to improve application quality and performance.<br/><br/>

          I’m always open to learning new technologies, taking on new challenges, and continuously improving my skills through hands-on experience and collaboration.
        </motion.p>

        

      </div>

      <div className='mt-20 flex flex-wrap gap-20'>
        {services.map((service, index) => (
          <ServiceCard key={service.title} index={index} {...service} />
        ))}
      </div>
    </>
  );
};


export default SectionWrapper(About, "about");
