return {
  -- Definisce il plugin nvim-ansible
  'mfussenegger/nvim-ansible',
  -- Specifica i tipi di file per cui questo plugin deve essere caricato.
  -- LazyVim usa 'ft' per caricare i plugin solo quando necessario, ottimizzando l'avvio.
  ft = { 'yaml.ansible', 'yaml' },

  -- Qui puoi aggiungere opzioni specifiche per nvim-ansible, se ce ne sono.
  -- Al momento, nvim-ansible non ha molte opzioni di configurazione direttamente esposte
  -- tramite un metodo `setup()`. Funziona principalmente tramite il rilevamento dei filetype.
  -- Tuttavia, puoi aggiungere una funzione `config` se in futuro avesse opzioni.
  -- config = function()
  --   -- Qui potresti chiamare una funzione di setup se il plugin la fornisse.
  -- end,
}
