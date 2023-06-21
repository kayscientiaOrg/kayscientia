delete from meta_view_groups where views in (select id from meta_view where module like 'kayscientia-%');
delete from meta_view where module like 'kayscientia-%';
delete from meta_menu_groups where menus in (select id from meta_menu where module like 'kayscientia-%' );
delete from meta_menu_roles where menus in (select id from meta_menu where module like 'kayscientia-%' );
delete from meta_action_menu where module like 'kayscientia-%';
delete from meta_json_model where menu in (select id from meta_menu where module like 'kayscientia-%' );
delete from meta_json_model where menu_parent in (select id from meta_menu where module like 'kayscientia-%' );
delete from meta_menu where module like 'kayscientia-%';
delete from meta_action where module like 'kayscientia-%';
delete from meta_module_depends where depend_id in (select id from meta_module where name like 'kayscientia-%' );
delete from meta_module_depends where module_id in (select id from meta_module where name like 'kayscientia-%' );
delete from meta_module where name like 'kayscientia-%';
delete from meta_select_item where select_id in (select id from meta_select where module like 'kayscientia-%');
delete from meta_select where module like 'kayscientia-%';
ALTER TABLE production_version_tag RENAME COLUMN "name" TO "description";
-- DELETE FROM BASE_CITY AS c WHERE c.id NOT IN (SELECT DISTINCT a.city FROM BASE_ADDRESS AS a WHERE a.city IS NOT NULL);

select 'RANDOM_NUMBER' as random;
