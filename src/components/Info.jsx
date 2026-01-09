import { SectionWrapper } from "../hoc";
import { FiPhone, FiMail, FiMapPin } from "react-icons/fi";
import { styles } from "../styles";

const Info = () => {
  return (
    <>
      <div className="bg-tertiary p-6 sm:p-8 rounded-xl flex flex-col items-center text-center max-w-3xl mx-auto">

        <h3 className={styles.sectionHeadText}>Contact</h3>
        <br/>

        <div className="text-secondary text-sm flex flex-col sm:flex-row items-center gap-4 sm:gap-8">

          {/* Phone */}
          <div className="flex items-center gap-2">
            <FiPhone className="text-white text-base" />
            <span>+91-8097728165</span>
          </div>

          {/* Email */}
          <div className="flex items-center gap-2">
            <FiMail className="text-white text-base" />
            <a
              href="mailto:rj993030@gmail.com"
              className="hover:text-white transition"
            >
              rj993030@gmail.com
            </a>
          </div>

          {/* Location */}
          <div className="flex items-center gap-2">
            <FiMapPin className="text-white text-base" />
            <span>Mumbai, India</span>
          </div>

        </div>

        <br />

      </div>
    </>
  );
};

export default SectionWrapper(Info, "info");
