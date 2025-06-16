-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

return {
  -- ... altri plugin
  {
    'mfussenegger/nvim-ansible',
    -- Configurazione opzionale se vuoi solo il ftdetect e non le altre features
    ft = 'yaml', -- Questo imposta che il plugin sia caricato per i file yaml
    config = function()
      -- Puoi aggiungere qui configurazioni specifiche per nvim-ansible
      -- se non vuoi il caricamento completo del plugin ma solo il ftdetect,
      -- potresti fare in modo che questo plugin gestisca solo il ftdetect.
    end,
  },
}
