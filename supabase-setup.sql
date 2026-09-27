-- Run this once in Supabase: Project → SQL Editor → New Query → paste all → Run

create table if not exists reports (
  id text primary key,
  type text not null check (type in ('lost','found')),
  title text not null,
  category text not null,
  location text not null,
  date date not null,
  description text not null,
  image text,
  color jsonb,
  status text not null default 'open',
  created_at timestamptz not null default now()
);

alter table reports enable row level security;

create policy "public can read reports" on reports
  for select using (true);
create policy "public can insert reports" on reports
  for insert with check (true);
create policy "public can update reports" on reports
  for update using (true);
create policy "public can delete reports" on reports
  for delete using (true);

create table if not exists match_history (
  id bigserial primary key,
  lost_title text not null,
  found_title text not null,
  score int not null,
  at timestamptz not null default now()
);

alter table match_history enable row level security;

create policy "public can read history" on match_history
  for select using (true);
create policy "public can insert history" on match_history
  for insert with check (true);
