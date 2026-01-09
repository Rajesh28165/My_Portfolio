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
    title: "Software Developer Engineer - 1",
    company_name: "Tekenlight Solutions Pvt Ltd",
    icon: coder,
    iconBg: "#fff",
    date: "Jan 2025 - Present",
    points: [
      "Developing secure, scalable cross-platform mobile applications for Android and iOS using Flutter and Dart, and contributing to Angular-based web modules for fintech platforms.",
      "Implementing frontend-critical features including authentication flows, OTP verification, secure local storage, and session lifecycle management.",
      "Building high-performance, responsive UIs using Bloc/Cubit and clean MV* architectures, with a focus on maintainability and scalability.",
      "Designing reusable UI components and optimizing application performance to improve user experience across devices.",
      "Collaborating closely with backend engineers, UX designers, and product teams to deliver reliable, user-focused solutions.",
      "Actively learning backend development with Java and Golang, with working familiarity in Python and React to support end-to-end development."
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

const testimonials = [
  {
    testimonial:
      "I thought it was impossible to make a website as beautiful as our product, but Rick proved me wrong.",
    name: "Sara Lee",
    designation: "CFO",
    company: "Acme Co",
    image: "https://randomuser.me/api/portraits/women/4.jpg",
  },
  {
    testimonial:
      "I've never met a web developer who truly cares about their clients' success like Rick does.",
    name: "Chris Brown",
    designation: "COO",
    company: "DEF Corp",
    image: "https://randomuser.me/api/portraits/men/5.jpg",
  },
  {
    testimonial:
      "After Rick optimized our website, our traffic increased by 50%. We can't thank them enough!",
    name: "Lisa Wang",
    designation: "CTO",
    company: "456 Enterprises",
    image: "https://randomuser.me/api/portraits/women/6.jpg",
  },
];

const projects = [
  {
    name: "Cash Republic",
    description: "CashRepublic is a digital financial platform that provides users with a prepaid debit card and essential money management features such as direct deposits, mobile wallet support, and fee-free access to funds. The platform is designed to make everyday banking more accessible and affordable for users without traditional bank accounts",
    tags: [
      {
        name: "HTML",
        color: "blue-text-gradient",
      },
      {
        name: "CSS",
        color: "green-text-gradient",
      },
      {
        name: "Type Script",
        color: "blue-text-gradient",
      },
      {
        name: "Angular",
        color: "pink-text-gradient",
      },
    ],
    image: webImage,
  },
  {
    name: "Omni Financial",
    description: "Omni Financial is a feature-rich mobile financial application primarily serving military members and veterans, delivering secure money management and personal loan experiences, with streamlined onboarding, real-time account tracking, and intuitive user flows also available to civilian users.",
    tags: [
      {
        name: "Dart",
        color: "blue-text-gradient",
      },
      {
        name: "Fluuter",
        color: "green-text-gradient",
      },
      {
        name: "Bloc-Cubit",
        color: "pink-text-gradient",
      },
    ],
    image: appImage,
  },
];

export { services, technologies, experiences, testimonials, projects };
