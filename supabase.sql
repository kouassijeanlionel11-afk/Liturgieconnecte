-- Liturgieconnecté : base partagée (à exécuter dans Supabase > SQL Editor)
create table if not exists public.kv (
  key text primary key,
  value jsonb not null,
  updated_at timestamptz default now()
);

alter table public.kv enable row level security;

-- Seuls les responsables connectés (comptes créés par vous) peuvent lire et écrire
create policy "lecture responsables" on public.kv for select to authenticated using (true);
create policy "ajout responsables"   on public.kv for insert to authenticated with check (true);
create policy "modif responsables"   on public.kv for update to authenticated using (true) with check (true);
create policy "suppr responsables"   on public.kv for delete to authenticated using (true);

-- Synchronisation en temps réel
alter publication supabase_realtime add table public.kv;
