ALTER TABLE base_currency ADD codeiso varchar(255) NULL;
update base_currency set codeiso = code;
ALTER TABLE base_currency ALTER COLUMN codeiso SET NOT NULL;
CREATE UNIQUE INDEX base_currency_codeiso_idx ON public.base_currency (codeiso);
