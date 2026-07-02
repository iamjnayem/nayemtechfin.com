<script setup>
import { ref } from 'vue'

const email = 'jannatulnayem1032@gmail.com'
const copied = ref(false)

function copyEmail() {
  navigator.clipboard.writeText(email)
  copied.value = true
  setTimeout(() => { copied.value = false }, 2000)
}
</script>

<template>
  <section id="contact" class="section-padding bg-zinc-100 dark:bg-zinc-800/20">
    <div class="container-wide">
      <div class="max-w-3xl mx-auto text-center">
        <p class="section-label">Get In Touch</p>
        <h2 class="section-title">Let's Build Something Impactful</h2>
        <p class="text-zinc-600 dark:text-zinc-400 mb-10 max-w-xl mx-auto">
          Looking for a backend engineer who understands fintech at depth? 
          I'm available for freelance projects, contract work, and full-time opportunities.
        </p>

        <div class="flex flex-col sm:flex-row items-center justify-center gap-4 mb-12">
          <button @click="copyEmail"
                  class="btn-primary min-w-[200px] justify-center">
            <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
            </svg>
            {{ copied ? 'Copied!' : 'Copy Email' }}
          </button>
          <a href="https://linkedin.com/in/jnayem"
             target="_blank" rel="noopener noreferrer"
             class="btn-outline justify-center">
            <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24">
              <path d="M20.447 20.452h-3.554v-5.569c0-1.328-.027-3.037-1.852-3.037-1.853 0-2.136 1.445-2.136 2.939v5.667H9.351V9h3.414v1.561h.046c.477-.9 1.637-1.85 3.37-1.85 3.601 0 4.267 2.37 4.267 5.455v6.286zM5.337 7.433c-1.144 0-2.063-.926-2.063-2.065 0-1.138.92-2.063 2.063-2.063 1.14 0 2.064.925 2.064 2.063 0 1.139-.925 2.065-2.064 2.065zm1.782 13.019H3.555V9h3.564v11.452zM22.225 0H1.771C.792 0 0 .774 0 1.729v20.542C0 23.227.792 24 1.771 24h20.451C23.2 24 24 23.227 24 22.271V1.729C24 .774 23.2 0 22.222 0h.003z" />
            </svg>
            Connect on LinkedIn
          </a>
        </div>

        <div class="p-6 rounded-xl bg-white dark:bg-zinc-900/50 border border-zinc-200 dark:border-zinc-800">
          <p class="text-sm text-zinc-500 mb-2 font-mono">Direct Email</p>
          <a :href="`mailto:${email}`" class="text-lg font-semibold hover:text-emerald-500 transition-colors">
            {{ email }}
          </a>
        </div>
      </div>
    </div>
  </section>
</template>
