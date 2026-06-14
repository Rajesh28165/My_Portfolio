import {
  mobile,
  backend,
  creator,
  web,
  javascript,
  typescript,
  html,
  css,
  reactjs,
  angular,
  bootstrap,
  chakra,
  ionic,
  git,
  figma,
  blender,
  coder,
  verification,
  dav,
  anshuiya,
  hidr8,
  webImage,
  appImage,
  kharchaSutra,
  threejs,
  flutter,
  dart,
  java,
  golang,
  python,
  mongodb,
  sql
} from "../assets";

export const navLinks = [
  {
    id: "about",
    title: "About",
  },
  {
    id: "work",
    title: "Work",
  },
  {
    id: "contact",
    title: "Contact",
  },
];

const services = [
  {
    title: "Flutter Developer",
    icon: mobile,
  },
  {
    title: "Angular Developer",
    icon: web,
  },
];

const technologies = [
  {
    name: "Flutter",
    icon: flutter,
  },
  {
    name: "Dart",
    icon: dart,
  },
  {
    name: "HTML 5",
    icon: html,
  },
  {
    name: "CSS 5",
    icon: css,
  },
  {
    name: "JavaScript",
    icon: javascript,
  },
  {
    name: "TypeScript",
    icon: typescript,
  },
  {
    name: "Angular",
    icon: angular,
  },
  {
    name: "Python",
    icon: python,
  },
  {
    name: "SQL",
    icon: sql,
  },
  {
    name: "git",
    icon: git,
  },
  {
    name: "React JS",
    icon: reactjs,
  },
  {
    name: "MongoDB",
    icon: mongodb,
  },
  {
    name: "Java",
    icon: java,
  },
  {
    name: "Golang",
    icon: golang,
  },
];

const experiences = [
  {
    title: "Software Engineer",
    company_name: "Tekenlight Solutions Pvt Ltd",
    icon: coder,
    iconBg: "#fff",
    date: "Jan 2025 - Present",
    points: [
      "Developed secure, scalable cross-platform mobile applications for Android and iOS using Flutter and Dart, while contributing to Angular-based web modules for fintech platforms.",
      "Implemented frontend-critical features including authentication flows, OTP verification, secure local storage, and session lifecycle management to enhance application security and user experience.",
      "Built high-performance, responsive user interfaces using Bloc/Cubit and clean architecture principles, ensuring maintainability and scalability.",
      "Designed reusable UI components and optimized application performance to improve responsiveness and consistency across devices.",
      "Collaborated closely with backend engineers, UX designers, and product teams to deliver reliable, user-centric solutions aligned with business requirements.",
      "Gained exposure to backend development using Java and Golang, while leveraging Python and React to support full-stack development initiatives."
    ],
  },
  {
    title: "Verification Executive",
    company_name: "Teleperformance",
    icon: verification,
    iconBg: "#fff",
    date: "Jul 2023- April 2024",
    points: [
      "Performed employment and education verifications, ensuring high accuracy, compliance, and data confidentiality.",
      "Validated information from multiple sources and delivered timely verification results under strict deadlines.",
      "Collaborated with internal teams to streamline workflows and maintain quality standards",
      "Maintained detailed documentation while adhering to process and compliance guidelines."
    ],
  }
];


const projects = [
  {
    name: "Cash Republic",
    type: "Web Application",
    description: "Cash Republic is a customer service web application that enables branch representatives to assist users with banking and account-related services. The platform supports account creation, debit card management, profile updates, and issue resolution, helping deliver a seamless experience across digital and in-person banking channels.",
    tags: [
      { name: "HTML", color: "blue-text-gradient" },
      { name: "CSS", color: "orange-text-gradient" },
      { name: "TypeScript", color: "blue-text-gradient" },
      { name: "Angular", color: "pink-text-gradient" },
    ],
    image: webImage,
    playstore_link: "",
    appstore_link: "",
  },
  {
    name: "Omni Financial",
    type: "Mobile Application",
    description: "Omni Financial is a mobile banking and lending application designed primarily for military members, veterans, and their families. The app provides secure account management, personal loan services, real-time transaction tracking, and streamlined onboarding, delivering a reliable and user-friendly digital financial experience.",
    tags: [
      { name: "Dart", color: "blue-text-gradient" },
      { name: "Flutter", color: "orange-text-gradient" },
      { name: "Bloc/Cubit", color: "pink-text-gradient" },
      { name: "Firebase", color: "blue-text-gradient" },
    ],
    image: appImage,
    playstore_link: "https://play.google.com/store/apps/details?id=com.omnifinancial.pub",
    appstore_link: "https://apps.apple.com/in/app/omni-financial/id1645035640",
  },
  {
    name: "Kharcha Sutra",
    type: "Mobile Application",
    description:
      "Kharcha Sutra is a personal finance management application that helps users track income, expenses, and spending habits with ease. The app offers transaction categorization, financial insights, and budget monitoring features, empowering users to make smarter financial decisions and maintain better control over their money.",
    tags: [
      { name: "Dart", color: "blue-text-gradient" },
      { name: "Flutter", color: "orange-text-gradient" },
      { name: "Bloc/Cubit", color: "pink-text-gradient" },
      { name: "Firebase", color: "blue-text-gradient" },
    ],
    image: kharchaSutra,
    playstore_link: "https://play.google.com/store/apps/details?id=com.kharchasutra.app",
    appstore_link: "",
  },
];

export { services, technologies, experiences, projects };
