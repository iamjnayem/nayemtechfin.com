<script setup>
const bio = "4+ years of professional experience in backend development, API design, and database architecture specific to fintech industry. Proficient in system design. Passionate about solving complex challenges, optimizing performance, and leveraging AI tools. Extensive fintech industry experience with a focus on scalability and security. Let's build impactful solutions together!"
</script>

<template>
  <section id="hero" class="min-h-screen flex items-center section-padding pt-24">
    <div class="container-wide w-full">
      <div class="max-w-4xl mx-auto">
        <div class="mb-6">
          <span class="inline-block px-3 py-1 rounded-full text-xs font-mono font-medium
                       bg-emerald-500/10 text-emerald-400 border border-emerald-500/20">
            Available for freelance
          </span>
        </div>

        <h1 class="text-4xl sm:text-5xl md:text-6xl lg:text-7xl font-extrabold leading-tight mb-6">
          <span class="block">Backend Engineer</span>
          <span class="block gradient-text">Fintech Specialist</span>
        </h1>

        <p class="text-lg sm:text-xl text-zinc-600 dark:text-zinc-400 leading-relaxed max-w-3xl mb-8">
          {{ bio }}
        </p>

        <div class="flex flex-wrap gap-4">
          <a href="#projects" class="btn-primary">
            View My Work
            <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
            </svg>
          </a>
          <a href="#contact" class="btn-outline">
            Hire Me for Freelance
            <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 7l5 5m0 0l-5 5m5-5H6" />
            </svg>
          </a>
        </div>

        <div class="mt-16 grid grid-cols-2 sm:grid-cols-4 gap-6">
          <div class="p-4 rounded-xl bg-zinc-100 dark:bg-zinc-800/50 border border-zinc-200 dark:border-zinc-700/50">
            <div class="text-2xl font-bold gradient-text">4+</div>
            <div class="text-sm text-zinc-500 mt-1">Years Experience</div>
          </div>
          <div class="p-4 rounded-xl bg-zinc-100 dark:bg-zinc-800/50 border border-zinc-200 dark:border-zinc-700/50">
            <div class="text-2xl font-bold gradient-text">20+</div>
            <div class="text-sm text-zinc-500 mt-1">Payment Integrations</div>
          </div>
          <div class="p-4 rounded-xl bg-zinc-100 dark:bg-zinc-800/50 border border-zinc-200 dark:border-zinc-700/50">
            <div class="text-2xl font-bold gradient-text">4</div>
            <div class="text-sm text-zinc-500 mt-1">Languages</div>
          </div>
          <div class="p-4 rounded-xl bg-zinc-100 dark:bg-zinc-800/50 border border-zinc-200 dark:border-zinc-700/50">
            <div class="text-2xl font-bold gradient-text">100%</div>
            <div class="text-sm text-zinc-500 mt-1">Client Satisfaction</div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>
