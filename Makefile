ifndef spec
spec=gnome-shell-extension-tiling-assistant.spec
endif

srpm:
	rpmdev-setuptree || true
	@set -e; rpmbuild -bs --define "_disable_source_fetch 0" $(spec)
ifdef outdir
	cp `rpmbuild --eval "%{_topdir}"`/SRPMS/* $(outdir)
endif
