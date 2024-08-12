<template>
  <div class="flex flex-col gap-20 w-full">
    <div class="hidden sm:block">
      <HeaderSection
        bgSize="contain"
        position="calc(100vw - 1470px)"
        backgroundImage="/imgs/about/robot-arm-01.png"
        title="About ManiSkill"
        description="The state-of-the-art open-source platform to design, simulate, and train AI-based robots, led by"
      />
    </div>
    <div class="sm:hidden block w-full">
      <HeaderSection
        position="-20px"
        bgSize="cover"
        backgroundImage="/imgs/header/robot-arm-03.png"
        title="About ManiSkill"
        description="The state-of-the-art open-source platform to design, simulate, and train AI-based robots, led by"
      />
    </div>

    <div
      class="flex w-full flex-col justify-center items-center px-6 sm:px-20 sm:py-[120px] gap-[120px]"
    >
      <div class="flex gap-10 flex-col sm:flex-row">
        <p
          class="sm:w-1/2 text-[#1d1d1e] text-[32px] font-normal font-ppsupplySans-regular leading-[38px]"
        >
          What is ManiSkill?
        </p>
        <div class="sm:w-1/2 flex flex-col gap-4">
          <span
            class="text-[#1d1d1e] text-lg font-normal font-geist-regular leading-snug"
            >ManiSkill is a state-of-the-art open-source GPU accelerated
            robotics simulation platform built on the
            <p
              class="text-[#1d1d1e] text-lg font-semibold font-geist-regular leading-snug inline"
            >
              SAPIEN
            </p>
            engine. ManiSkill enables developers to design, simulate, test, and
            train AI-based robots in a physically-based virtual environment at
            scale. By leveraging efficient training methods, ManiSkill offers
            unparalleled speed, efficiency, and flexibility for robot training
            from state and visual modalities.</span
          >
          <a
            href="https://sapien.ucsd.edu/"
            target="_blank"
            class="text-[#1d1d1e] text-base font-normal font-ppsupplySans-regular leading-tight"
            >[Learn More About SAPIEN <IconSymbolBlack class="inline" />]</a
          >
        </div>
      </div>
      <div class="flex gap-10 flex-col sm:flex-row">
        <p
          class="sm:w-1/2 text-[#1d1d1e] text-[32px] font-normal font-ppsupplySans-regular leading-[38px]"
        >
          Why ManiSkill?
        </p>
        <div class="sm:w-1/2 flex flex-col gap-6">
          <div v-for="item in content">
            <h1
              class="text-[#1d1d1e] text-2xl font-normal font-ppsupplySans-regular leading-[30px]"
            >
              {{ item.title }}
            </h1>
            <p
              class="text-[#1d1d1e] text-lg font-light font-geist-light leading-snug"
            >
              {{ item.content }}
            </p>
          </div>
        </div>
      </div>
      <!--  Our Journey towards Scalable Robot Learning -->
      <div class="flex flex-col w-full gap-10">
        <div class="flex w-full justify-between">
          <p
            class="text-[#1d1d1e] text-[32px] font-normal font-ppsupplySans-regular leading-[38px]"
          >
            Our Journey towards Scalable Robot Learning
          </p>
          <div class="sm:flex flex-row hidden">
            <button
              @click=""
              class="flex justify-center items-center w-10 h-10 rounded-[40px] border border-black"
            >
              <IconLeft />
            </button>
            <button
              class="flex felx-row w-[120px] bg-white justify-center items-center rounded-[32px] gap-2 text-stone-950 text-lg font-normal font-ppsupplySans-regular leading-snug border border-black"
              @click=""
            >
              Next<IconRight />
            </button>
          </div>
        </div>
        <div
          class="flex-col sm:flex-row flex gap-y-10 gap-x-[120px] relative overflow-scroll scrollbar-none"
        >
          <div class="border-l h-full absolute w-[1px] sm:hidden block"></div>
          <div v-for="item in timeLineValue">
            <div
              class="sm:h-[1px] sm:border-t absolute sm:w-full sm:top-10"
            ></div>

            <div
              class="flex flex-col w-80 sm:h-[342px] sm:justify-between relative ml-6"
            >
              <p
                class="text-[#aaafb8] sm:text-[#1d1d1e] leading-snug text-lg sm:text-2xl font-normal font-ppsupplySans-regular sm:leading-[30px] mb-2 sm:mb-[32px]"
              >
                {{ item.time }}
              </p>
              <p
                class="mb-3 text-[#1d1d1e] text-2xl font-normal font-ppsupplySans-regular leading-[30px]"
              >
                {{ item.name }}
              </p>
              <p
                class="text-[#1d1d1e] text-base font-normal font-geist-regular leading-tight sm:pr-[40px]"
              >
                {{ item.content }}
              </p>
              <a
                :href="item.link"
                target="_blank"
                class="mt-4 sm:mt-0 text-[#1d1d1e] text-base font-normal font-ppsupplySans-regular leading-tight"
                >[Learn More <IconSymbolBlack class="inline" />]</a
              >
            </div>
          </div>
        </div>
      </div>
      <!-- Current Key Team Members -->
      <div class="flex flex-col sm:flex-row sm:gap-10 w-full">
        <p
          class="w-2/3 sm:w-1/2 text-[#1d1d1e] text-[32px] font-normal font-ppsupplySans-regular leading-[38px]"
        >
          Current Key Team Members
        </p>
        <div class="sm:w-1/2 flex flex-col sm:flex-row sm:gap-10">
          <div
            v-for="item in teamValue"
            class="flex flex-row sm:flex-col justify-center sm:justify-start items-center sm:w-[160px] gap-x-4"
          >
            <div
              class="w-[160px] h-[160px] flex justify-center items-center mb-4"
            >
              <img
                :src="item.image"
                alt="image"
                class="w-full object-contain aspect-square"
              />
            </div>
            <div
              class="flex flex-col text-left sm:text-center justify-center items-center w-full"
            >
              <p
                class="text-[#1d1d1e] text-base font-normal font-ppsupplySans-regular leading-tight w-full"
              >
                {{ item.name }}
              </p>
              <p
                class="text-[#1d1d1e] text-sm font-normal font-geist-light leading-[18px] sm:text-center w-full"
              >
                {{ item.title }}
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <Footer />
  </div>
</template>

<script setup lang="ts">
import HeaderSection from "@/components/header/HeaderSection.vue";
import IconSymbolBlack from "@/assets/svg/symbol-black.svg";
import Footer from "@/components/footer/Footer.vue";
import IconLeft from "@/assets/svg/left.svg";
import IconRight from "@/assets/svg/right.svg";

const content = [
  {
    title: "Traditional robot training is slow and expensive.",
    content:
      "Developing and training robots is a slow and expensive process, hindering advancements in robotics industry. Traditional methods limit the complexity of tasks robots can learn and restrict the pace of innovation. ManiSkill is here to change that by providing a simulation approach to robotics that scales with compute.",
  },
  {
    title: "Accelerate state/visual training with GPU.",
    content:
      "ManiSkill supports GPU parallelization of simulation and rendering, enabling the highest throughput in data collection for machine learning workflows like Reinforcement Learning and Online Imitation Learning.",
  },
  {
    title: "Diverse pre-built tasks, ready to go.",
    content:
      "No need to waste time building training tasks from scratch. ManiSkill provides a library of 20+ pre-built manipulation tasks with 2,000+ objects ready to use. Reward functions are also provided to support reinforcement learning. Millions of demonstration frames are provided to support learning from demonstration approaches.",
  },
  {
    title: "Open to everyone.",
    content:
      "ManiSkill provides a user-friendly interface and extensive documentation, making it accessible to developers of all experience levels. Our open-source stack allows anyone to contribute to the robotics revolution in simulation.",
  },
];

const timeLineValue = [
  {
    time: "2024",
    name: "ManiSkill 3",
    content:
      "We built the worlds fastest simulator by integrating GPU simulation and parallel rendering, which enables large scale generalizable visual robot learning. ManiSkill3 further brings 20+ robots, room-scale scenes, new pre-built tasks, and diverse GPU simulation for generalizable learning at scale.",
    link: "",
  },
  {
    time: "2024",
    name: "ManiSkill ViTac Challenge",
    content:
      "We developed accurate simulation of vision-tactile sensors with strong sim2real results. A challenge was released to let the community submit solutions leveraging the vision-tactile simulation and directly tested in the real world with great success.",
    link: "https://ai-workshops.github.io/maniskill-vitac-challenge-2024/",
  },
  {
    time: "2023",
    name: "ManiSkill 2",
    content:
      "We significantly improved the framework to be easy to use and install. The improvements enabled many community members to build their own tasks to tackle problems like sim2real and RL. A second ManiSkill challenge was created with thousands of object variations to tackle the generalizable robot learning problem at greater scales than before.",
    link: "https://maniskill2.github.io/",
  },
  {
    time: "2021",
    name: "ManiSkill 1",
    content:
      "We take the first initiative into the world of generalizable robotics and manipulation. We created the first benchmark around articulated home object manipulation like chairs and cabinets. We led and challenged the community on the problems of generalizable robot manipulation via simulation.",
    link: "https://sapien.ucsd.edu/challenges/maniskill/2021/",
  },
];

const teamValue = [
  {
    image: "/imgs/about/image01.png",
    title: "PhD at UC San Diego",
    name: "STONE TAO",
  },
  {
    image: "/imgs/about/image02.png",
    title: "PhD at UC San Diego",
    name: "FANBO XIANG",
  },
  {
    image: "/imgs/about/image03.png",
    title:
      "Associate Professor at UC San Diego, Co-Founder & CTO of Hillbot Inc.",
    name: "HAO SU",
  },
];
</script>
