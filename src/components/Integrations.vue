<script setup>
const gateways = [
  'Vexora', 'Zerocap', 'RDD/Dolphin', 'Cryptopay Shift Forex',
  'Mandato Global', 'BPN', 'Bitpace', 'GWX', 'Trezuz', 'Indiapay',
  'Transact365', 'Openpayd', 'Transvoucher', 'Twelvegroup', 'Coinsbuy',
  'Voucherry', 'Binance Pay', 'Radom', 'Kotanipay', 'SWRPay',
  'Letknowpay', 'Xcoins',
]

const categories = [
  { name: 'Card Processing', gateways: ['BPN', 'GWX', 'Indiapay', 'Transact365', 'Openpayd', 'Twelvegroup', 'Radom', 'SWRPay', 'Letknowpay'] },
  { name: 'Crypto & Digital Assets', gateways: ['Zerocap', 'Cryptopay Shift Forex', 'Bitpace', 'Coinsbuy', 'Binance Pay', 'Xcoins'] },
  { name: 'APMs & Alternative', gateways: ['Vexora', 'RDD/Dolphin', 'Mandato Global', 'Trezuz', 'Transvoucher', 'Voucherry', 'Kotanipay'] },
]
</script>

<template>
  <section id="integrations" class="section-padding bg-zinc-100 dark:bg-zinc-800/20">
    <div class="container-wide">
      <div class="text-center mb-16">
        <p class="section-label">Fintech Integrations</p>
        <h2 class="section-title">20+ Payment Gateways Integrated</h2>
        <p class="text-zinc-600 dark:text-zinc-400 max-w-2xl mx-auto">
          Extensive experience integrating global payment processors across cards, crypto, and alternative payment methods.
        </p>
      </div>

      <div class="overflow-hidden mb-16 rounded-xl border border-zinc-200 dark:border-zinc-800 bg-white dark:bg-zinc-900/50 py-6">
        <div class="flex animate-marquee gap-8 whitespace-nowrap">
          <span v-for="(gw, idx) in [...gateways, ...gateways]" :key="idx"
                class="inline-flex items-center px-4 py-2 rounded-lg bg-emerald-500/5 border border-emerald-500/10 text-sm font-medium text-emerald-600 dark:text-emerald-400">
            <span class="w-2 h-2 rounded-full bg-emerald-500 mr-2"></span>
            {{ gw }}
          </span>
        </div>
      </div>

      <div class="grid md:grid-cols-3 gap-6">
        <div v-for="cat in categories" :key="cat.name"
             class="p-6 rounded-xl bg-white dark:bg-zinc-900/50 border border-zinc-200 dark:border-zinc-800
                    hover:border-emerald-500/30 transition-all duration-200">
          <h3 class="text-lg font-semibold mb-4 flex items-center gap-2">
            <span class="w-6 h-6 rounded-full bg-emerald-500/10 flex items-center justify-center">
              <span class="w-2 h-2 rounded-full bg-emerald-500"></span>
            </span>
            {{ cat.name }}
          </h3>
          <div class="flex flex-wrap gap-2">
            <span v-for="gw in cat.gateways" :key="gw"
                  class="px-3 py-1.5 rounded-lg text-xs font-mono font-medium
                         bg-zinc-100 dark:bg-zinc-800 text-zinc-700 dark:text-zinc-300
                         border border-zinc-200 dark:border-zinc-700">
              {{ gw }}
            </span>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>
