import {
  mobile,
  web,
  api,
  javascript,
  typescript,
  html,
  css,
  reactjs,
  angular,
  git,
  coder,
  application,
  engineer,
  verification,
  webImage,
  omniFinancial,
  omniCommand,
  kharchaSutra,
  flutter,
  dart,
  java,
  golang,
  firebase,
  python,
  mongodb,
  sql
} from "../assets";

export const navLinks = [
  {
    id: "hero",
    title: "Home",
  },
  {
    id: "about",
    title: "About",
  },
  {
    id: "work",
    title: "Work",
  },
  {
    id: "tech",
    title: "Skills",
  },
  {
    id: "contact",
    title: "Contact",
  },
  {
    id: "resume",
    title: "Resume",
  }
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
    name: "Firebase",
    icon: firebase,
  },
  {
    name: "API",
    icon: api,
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
    company_name: "Nagarro Software Pvt Ltd",
    location: "Mumbai, India",
    icon: engineer,
    iconBg: "#fff",
    date: "Jul 2026 - Present",
    points: [
      "Completed company-led technical upskilling in React.js and AI fundamentals.",
      "Built hands-on React applications using Redux Toolkit, REST APIs, routing, and CRUD operations.",
    ],
  },
  {
    title: "Software Engineer",
    company_name: "Tekenlight Solutions Pvt Ltd",
    location: "Bengaluru, India",
    icon: coder,
    iconBg: "#fff",
    date: "Jan 2025 - Jun 2026",
    points: [
      "Developed fintech and mobile banking features for Android and iOS using Flutter and Dart, alongside Angular web modules.",
      "Implemented secure authentication, OTP verification, token management, and session handling.",
      "Built reusable UI components using Bloc/Cubit and Clean Architecture principles.",
      "Integrated REST APIs, Firebase Authentication, Google APIs, and third-party services.",
      "Managed application builds and deployments across Development, UAT, and Production environments.",
      "Investigated application issues, centralized error handling, and optimized widget performance.",
    ],
  },
  {
    title: "Application Developer",
    company_name: "Newgen Technomate LLP",
    location: "Pune, India",
    icon: application,
    iconBg: "#fff",
    date: "Oct 2022 - Nov 2024",
    points: [
      "Developed fintech application features and reusable UI components using Flutter and Dart.",
      "Implemented multi-step registration, secure sign-in, OTP authentication, and session management.",
      "Reduced code duplication by approximately 30% through reusable widgets and shared components.",
      "Integrated REST APIs, token refresh, and API pagination.",
      "Collaborated with backend developers to troubleshoot issues and improve application reliability.",
    ],
  },
];

const projects = [
  {
    name: "Cash Republic",
    type: "Web Application | Angular",
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
    name: "Omni Command",
    type: "Mobile Application | Flutter",
    description: "A mobile banking application designed for U.S. military personnel, veterans, and Department of Defense employees, offering early paycheck access, fee-free checking, debit card management, direct deposit setup, and secure financial transactions.",
    tags: [
      { name: "Dart", color: "blue-text-gradient" },
      { name: "Flutter", color: "orange-text-gradient" },
      { name: "Bloc/Cubit", color: "pink-text-gradient" },
      { name: "Firebase", color: "blue-text-gradient" },
    ],
    image: omniCommand,
    playstore_link: "https://play.google.com/store/apps/details?id=com.omnicommand.pub",
    appstore_link: "https://apps.apple.com/us/app/omni-command/id6751181659",
  },
  {
    name: "Omni Financial",
    type: "Mobile Application | Flutter",
    description: "A mobile financial management application for U.S. military personnel, enabling users to manage debit cards, track spending, locate ATMs, deposit cash at retail locations, and access digital wallet services.",
    tags: [
      { name: "Dart", color: "blue-text-gradient" },
      { name: "Flutter", color: "orange-text-gradient" },
      { name: "Bloc/Cubit", color: "pink-text-gradient" },
      { name: "Firebase", color: "blue-text-gradient" },
    ],
    image: omniFinancial,
    playstore_link: "https://play.google.com/store/apps/details?id=com.omnifinancial.pub",
    appstore_link: "",
  },
  {
    name: "Kharcha Sutra | Solo Contributer",
    type: "Mobile Application | Flutter",
    description: "Kharcha Sutra is a personal finance management application that helps users track income, expenses, and spending habits with ease. The app offers transaction categorization, financial insights, and budget monitoring features, empowering users to make smarter financial decisions and maintain better control over their money.",
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
