<script setup>
const projects = [
  {
    name: 'Paymid Orchestration Platform',
    description: 'Unified API layer integrating 20+ global payment processors with a single interface. Handles routing, failover, and transaction reconciliation.',
    tech: ['Laravel', 'Vue.js', 'Docker', 'Mysql'],
    github: '#',
    live: 'https://play.google.com/store/apps/details?id=com.bd_cashbaba&pcampaignid=web_share',
  },
  {
    name: 'Payment Gateway Aggregator',
    description: 'Unified API layer integrating 20+ global payment processors with a single interface. Handles routing, failover, and transaction reconciliation.',
    tech: ['.NET', 'Microservices', 'Docker', 'PostgreSQL'],
    github: '#',
    live: 'https://play.google.com/store/apps/details?id=com.bd_cashbaba&pcampaignid=web_share',
  },
  {
    name: 'ISO8583 Message Parser',
    description: 'High-performance ISO8583 financial message parsing and generation library. Supports multiple bitmaps, MTI routing, and custom field definitions.',
    tech: ['PHP', 'Laravel', 'TCP Sockets'],
    github: '#',
    live: 'https://cashbaba.com.bd/',
  },
  {
    name: 'E-commerce Platform',
    description: 'Full-featured e-commerce platform with product catalog, shopping cart, payment integration, and order management. Scalable architecture for high traffic.',
    tech: ['Laravel', 'MySQL', 'Vue.js', 'Tailwind CSS'],
    github: '#',
    live: 'https://example-ecommerce.com',
  },
  {
    name: 'Bakery Management System',
    description: 'Comprehensive bakery management system with inventory tracking, order processing, and reporting capabilities.',
    tech: ['Laravel', 'MySQL', 'Vue.js', 'Tailwind CSS'],
    github: '#',
    live: 'https://example-bakery.com',
  },
  {
    name: 'Saloon Management System',
    description: 'Comprehensive saloon management system with appointment scheduling, service tracking, and customer management.',
    tech: ['Laravel', 'MySQL', 'Vue.js', 'Tailwind CSS'],
    github: '#',
    live: 'https://example-saloon.com',
  }
]
</script>

<template>
  <section id="projects" class="section-padding">
    <div class="container-wide">
      <div class="text-center mb-16">
        <p class="section-label">Projects</p>
        <h2 class="section-title">Things I've Built</h2>
        <p class="text-zinc-600 dark:text-zinc-400 max-w-2xl mx-auto">
          Open source and personal projects that showcase my engineering capabilities.
        </p>
      </div>

      <div class="grid md:grid-cols-2 gap-6">
        <div v-for="project in projects" :key="project.name"
             class="group p-6 rounded-xl bg-zinc-100 dark:bg-zinc-800/30 border border-zinc-200 dark:border-zinc-800
                    hover:border-emerald-500/40 hover:shadow-lg hover:shadow-emerald-500/5
                    transition-all duration-300">
          <div class="flex items-start justify-between mb-4">
            <div class="w-10 h-10 rounded-lg bg-emerald-500/10 flex items-center justify-center group-hover:scale-110 transition-transform">
              <svg class="w-5 h-5 text-emerald-500" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 20l4-16m4 4l4 4-4 4M6 16l-4-4 4-4" />
              </svg>
            </div>
            <div class="flex items-center gap-3">
              <a :href="project.live"
                 class="text-zinc-400 hover:text-emerald-500 transition-colors"
                 target="_blank" rel="noopener noreferrer" title="Live demo">
                <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 6H6a2 2 0 00-2 2v10a2 2 0 002 2h10a2 2 0 002-2v-4M14 4h6m0 0v6m0-6L10 14" />
                </svg>
              </a>
              <a :href="project.github"
                 class="text-zinc-400 hover:text-emerald-500 transition-colors"
                 target="_blank" rel="noopener noreferrer" title="Source code">
                <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24">
                  <path fill-rule="evenodd" d="M12 2C6.477 2 2 6.484 2 12.017c0 4.425 2.865 8.18 6.839 9.504.5.092.682-.217.682-.483 0-.237-.008-.868-.013-1.703-2.782.605-3.369-1.343-3.369-1.343-.454-1.158-1.11-1.466-1.11-1.466-.908-.62.069-.608.069-.608 1.003.07 1.531 1.032 1.531 1.032.892 1.53 2.341 1.088 2.91.832.092-.647.35-1.088.636-1.338-2.22-.253-4.555-1.113-4.555-4.951 0-1.093.39-1.988 1.029-2.688-.103-.253-.446-1.272.098-2.65 0 0 .84-.27 2.75 1.026A9.564 9.564 0 0112 6.844c.85.004 1.705.115 2.504.337 1.909-1.296 2.747-1.027 2.747-1.027.546 1.379.202 2.398.1 2.651.64.7 1.028 1.595 1.028 2.688 0 3.848-2.339 4.695-4.566 4.943.359.309.678.92.678 1.855 0 1.338-.012 2.419-.012 2.747 0 .268.18.58.688.482A10.019 10.019 0 0022 12.017C22 6.484 17.522 2 12 2z" clip-rule="evenodd" />
                </svg>
              </a>
            </div>
          </div>
          <h3 class="text-xl font-semibold mb-2 group-hover:text-emerald-400 transition-colors">
            {{ project.name }}
          </h3>
          <p class="text-sm text-zinc-600 dark:text-zinc-400 mb-4 leading-relaxed">
            {{ project.description }}
          </p>
          <div class="flex flex-wrap gap-2">
            <span v-for="t in project.tech" :key="t"
                  class="px-2.5 py-1 rounded-md text-xs font-mono font-medium
                         bg-emerald-500/10 text-emerald-600 dark:text-emerald-400">
              {{ t }}
            </span>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>
