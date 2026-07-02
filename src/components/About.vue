<script setup>
const skills = [
  { name: '.NET / C#', category: 'Backend', icon: 'M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8l-6-6z' },
  { name: 'Laravel / PHP', category: 'Backend', icon: 'M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8l-6-6z' },
  { name: 'Go (Golang)', category: 'Backend', icon: 'M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8l-6-6z' },
  { name: 'Microservices', category: 'Architecture', icon: 'M4 7v10c0 2.21 3.582 4 8 4s8-1.79 8-4V7' },
  { name: 'System Design', category: 'Architecture', icon: 'M12 6V4m0 2a2 2 0 100 4m0-4a2 2 0 110 4m-6 8a2 2 0 100-4m0 4a2 2 0 110-4m0 4v2m0-6V4m6 6v10m6-2a2 2 0 100-4m0 4a2 2 0 110-4m0 4v2m0-6V4' },
  { name: 'ISO8583', category: 'Fintech', icon: 'M9 12l2 2 4-4m5.618-4.016A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016z' },
  { name: 'Payment Gateway Integration', category: 'Fintech', icon: 'M9 12l2 2 4-4m5.618-4.016A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016z' },
  { name: 'Docker', category: 'DevOps', icon: 'M4 7v10c0 2.21 3.582 4 8 4s8-1.79 8-4V7' },
  { name: 'API Design', category: 'Backend', icon: 'M8 9l3 3-3 3m5 0h3M5 20h14a2 2 0 002-2V6a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z' },
  { name: 'Database Architecture', category: 'Backend', icon: 'M4 7v10c0 2.21 3.582 4 8 4s8-1.79 8-4V7M4 7c0 2.21 3.582 4 8 4s8-1.79 8-4M4 7c0-2.21 3.582-4 8-4s8 1.79 8 4' },
]

const experience = [
  {
    role: 'Backend Engineer',
    company: 'Paymid',
    period: 'Present',
    highlights: [
      'Integrated 20+ global payment processors (Cards, Crypto, APMs)',
      'Built scalable payment infrastructure handling high-throughput transactions',
    ],
  },
  {
    role: 'Backend Engineer',
    company: 'SSL Wireless',
    period: 'Previous',
    highlights: [
      'ISO8583 parsing & financial message processing',
      'Unified API platform development',
      'Laravel package development',
    ],
  },
  {
    role: 'Software Engineer',
    company: 'ShareTrip',
    period: 'Previous',
    highlights: [
      'Microservices architecture & distributed systems',
      'Scalable backend services for travel platform',
    ],
  },
]
</script>

<template>
  <section id="about" class="section-padding">
    <div class="container-wide">
      <div class="text-center mb-16">
        <p class="section-label">Skills & Experience</p>
        <h2 class="section-title">What I Bring to the Table</h2>
        <p class="text-zinc-600 dark:text-zinc-400 max-w-2xl mx-auto">
          Polyglot engineer specialized in building scalable, secure fintech infrastructure.
        </p>
      </div>

      <div class="grid lg:grid-cols-2 gap-12 mb-20">
        <div>
          <h3 class="text-xl font-semibold mb-6 flex items-center gap-2">
            <span class="w-8 h-0.5 bg-emerald-500 inline-block"></span>
            Tech Stack
          </h3>
          <div class="grid grid-cols-2 sm:grid-cols-3 gap-3">
            <div v-for="skill in skills" :key="skill.name"
                 class="group p-3 rounded-xl bg-zinc-100 dark:bg-zinc-800/50 border border-zinc-200 dark:border-zinc-700/50
                        hover:border-emerald-500/50 transition-all duration-200">
              <div class="flex items-center gap-2 mb-1">
                <svg class="w-4 h-4 text-emerald-500" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" :d="skill.icon" />
                </svg>
                <span class="text-xs text-emerald-500 font-mono">{{ skill.category }}</span>
              </div>
              <span class="text-sm font-medium">{{ skill.name }}</span>
            </div>
          </div>
        </div>

        <div>
          <h3 class="text-xl font-semibold mb-6 flex items-center gap-2">
            <span class="w-8 h-0.5 bg-emerald-500 inline-block"></span>
            Experience
          </h3>
          <div class="space-y-6">
            <div v-for="(exp, idx) in experience" :key="idx"
                 class="relative pl-8 border-l-2 border-zinc-200 dark:border-zinc-700">
              <div class="absolute left-0 top-1 w-3 h-3 -translate-x-[7px] rounded-full bg-emerald-500 border-2 border-zinc-900 dark:border-zinc-900"></div>
              <div class="mb-1">
                <span class="text-sm font-mono text-emerald-500">{{ exp.period }}</span>
              </div>
              <h4 class="font-semibold">{{ exp.role }}</h4>
              <p class="text-sm text-zinc-500 mb-2">{{ exp.company }}</p>
              <ul class="space-y-1">
                <li v-for="(item, i) in exp.highlights" :key="i"
                    class="text-sm text-zinc-600 dark:text-zinc-400 flex items-start gap-2">
                  <span class="text-emerald-500 mt-1">•</span>
                  {{ item }}
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>
