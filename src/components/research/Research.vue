<template>
  <div class="flex flex-col gap-20">
    <div class="hidden sm:block">
      <HeaderSection
        bgSize="contain"
        position="calc(100vw - 980px)"
        backgroundImage="/imgs/header/robot-arm-01.png"
        title="ManiSkill Research"
        description="We continuously explore theories and technologies to build autonomous systems that can actively and continuously learn in the physical world."
      />
    </div>
    <div class="sm:hidden block">
      <HeaderSection
        position=""
        bgSize="cover"
        backgroundImage="/imgs/header/robot-arm-02.png"
        title="ManiSkill Research"
        description="We continuously explore theories and technologies to build autonomous systems that can actively and continuously learn in the physical world."
      />
    </div>

    <div class="flex justify-center items-center flex-col p-6 sm:p-20 gap-10">
      <div
        class="flex flex-col justify-start sm:justify-center items-center gap-2"
      >
        <h1
          class="text-[#1d1d1e] w-full text-[32px] sm:text-center sm:text-[40px] font-normal font-ppsupplySans-regular leading-[44px] sm:leading-[44px]"
        >
          Publication Highlights
        </h1>
        <p
          class="text-[#1d1d1e]/60 text-sm font-normal font-geist-regular leading-[18px]"
        >
          * All publications below are supported by the ManiSkill platform or
          utilize valuable data collected through ManiSkill.
        </p>
      </div>
      <div class="flex flex-col justify-center sm:w-2/3">
        <div
          v-for="item in content"
          class="flex flex-row justify-between items-center py-6 w-full border-t"
        >
          <div class="flex gap-2 flex-col">
            <p
              class="text-[#1d1d1e]/60 text-xs font-normal font-ppsupplySans-regular leading-none"
            >
              [ {{ item.tip }} ]
            </p>
            <p
              class="text-[#1d1d1e] text-lg font-light font-geist-regular leading-snug"
            >
              {{ item.title }}
            </p>
            <p
              class="text-[#1d1d1e]/60 text-sm font-normal font-geist-regular leading-[18px]"
            >
              {{ item.content }}
            </p>
          </div>
          <div class="inline"><IconSymbolBlack /></div>
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

const content = [
  {
    tip: "arXiv 2024",
    title: "Evaluating Real-World Robot Manipulation Policies in Simulation",
    content:
      "Xuanlin Li, Kyle Hsu, Jiayuan Gu, Karl Pertsch, Oier Mees, Homer Rich Walke, Chuyuan Fu, Ishikaa Lunawat, Isabel Sieh, Sean Kirmani, Sergey Levine, Jiajun Wu, Chelsea Finn, Hao Su, Quan Vuong, Ted Xiao",
    link: "",
  },
  {
    tip: "ICLR 2024",
    title:
      "Reverse Forward Curriculum Learning for Extreme Sample and Demonstration Efficiency in Reinforcement Learning",
    content: "Stone Tao, Arth Shukla, Tse-kai Chan, Hao Su",
    link: "",
  },
  {
    tip: "ICLR 2024",
    title: "DrS: Learning Reusable Dense Rewards for Multi-Stage Tasks",
    content: "Tongzhou Mu, Minghua Liu, Hao Su",
    link: "",
  },
  {
    tip: "ICRA 2024 Best Paper",
    title: "Open x-embodiment: Robotic learning datasets and rt-x models",
    content:
      "Abhishek Padalkar, Acorn Pooley, Ajinkya Jain, Alex Bewley, Alex Herzog, Alex Irpan, Alexander Khazatsky, Anant Rai, Anikait Singh, Anthony Brohan, Antonin Raffin, Ayzaan Wahid, Ben Burgess-Limerick, Beomjoon Kim, Bernhard Schölkopf, Brian Ichter, Cewu Lu, Charles Xu, Chelsea Finn, Chenfeng Xu, Cheng Chi, Chenguang Huang, Christine Chan, Chuer Pan, Chuyuan Fu, Coline Devin, Danny Driess, Deepak Pathak, Dhruv Shah, Dieter Büchler, Dmitry Kalashnikov, Dorsa Sadigh, Edward Johns, Federico Ceola, Fei Xia, Freek Stulp, Gaoyue Zhou, Gaurav S Sukhatme, Gautam Salhotra, Ge Yan, Giulio Schiavi, Gregory Kahn, Hao Su, Hao-Shu Fang, Haochen Shi, Heni Ben Amor, Henrik I Christensen, Hiroki Furuta, Homer Walke, Hongjie Fang, Igor Mordatch, Ilija Radosavovic, Isabel Leal, Jacky Liang, Jad Abou-Chakra, Jaehyung Kim, Jan Peters, Jan Schneider, Jasmine Hsu, Jeannette Bohg, Jeffrey Bingham, Jiajun Wu, Jialin Wu, Jianlan Luo, Jiayuan Gu, Jie Tan, Jihoon Oh, Jitendra Malik, Jonathan Tompson, Jonathan Yang, Joseph J Lim, João Silvério, Junhyek Han, Kanishka Rao, Karl Pertsch, Karol Hausman, Keegan Go, Keerthana Gopalakrishnan, Ken Goldberg, Kendra Byrne, Kenneth Oslund, Kento Kawaharazuka, Kevin Zhang, Krishan Rana, Krishnan Srinivasan, Lawrence Yunliang Chen, Lerrel Pinto, Liam Tan, Lionel Ott, Lisa Lee, Masayoshi Tomizuka, Maximilian Du, Michael Ahn, Mingtong Zhang, Mingyu Ding, Mohan Kumar Srirama, Mohit Sharma, Moo Jin Kim, Naoaki Kanazawa, Nicklas Hansen, Nicolas Heess, Nikhil J Joshi, Niko Suenderhauf, Norman Di Palo, Nur Muhammad Mahi Shafiullah, Oier Mees, Oliver Kroemer, Pannag R Sanketi, Paul Wohlhart, Peng Xu, Pierre Sermanet, Priya Sundaresan, Quan Vuong, Rafael Rafailov, Ran Tian, Ria Doshi, Roberto Martín-Martín, Russell Mendonca, Rutav Shah, Ryan Hoque, Ryan Julian, Samuel Bustamante, Sean Kirmani, Sergey Levine, Sherry Moore, Shikhar Bahl, Shivin Dass, Shubham Sonawani, Shuran Song, Sichun Xu, Siddhant Haldar, Simeon Adebola, Simon Guist, Soroush Nasiriany, Stefan Schaal, Stefan Welker, Stephen Tian, Sudeep Dasari, Suneel Belkhale, Takayuki Osa, Tatsuya Harada, Tatsuya Matsushima, Ted Xiao, Tianhe Yu, Tianli Ding, Todor Davchev, Tony Z Zhao, Travis Armstrong, Trevor Darrell, Vidhi Jain",
    link: "",
  },
  {
    tip: "ICLR 2024 Spotlight",
    title: "Evaluating Real-World Robot Manipulation Policies in Simulation",
    content:
      "Xuanlin Li, Kyle Hsu, Jiayuan Gu, Karl Pertsch, Oier Mees, Homer Rich Walke, Chuyuan Fu, Ishikaa Lunawat, Isabel Sieh, Sean Kirmani, Sergey Levine, Jiajun Wu, Chelsea Finn, Hao Su, Quan Vuong, Ted Xiao",
    link: "",
  },
  {
    tip: "CVPR 2024",
    title:
      "CyberDemo: Augmenting Simulated Human Demonstration for Real-World Dexterous Manipulation",
    content:
      "Jun Wang, Yuzhe Qin, Kaiming Kuang, Yigit Korkmaz, Akhilan Gurumoorthy, Hao Su, Xiaolong Wang",
    link: "",
  },
];
</script>
