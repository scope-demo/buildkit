module github.com/moby/buildkit

go 1.13

require (
	cloud.google.com/go v0.55.0 // indirect
	cloud.google.com/go/pubsub v1.3.1 // indirect
	dmitri.shuralyov.com/gpu/mtl v0.0.0-20191203043605-d42048ed14fd // indirect
	github.com/AkihiroSuda/containerd-fuse-overlayfs v0.0.0-20200220082720-bb896865146c
	github.com/BurntSushi/toml v0.3.1
	github.com/Microsoft/go-winio v0.4.15-0.20190919025122-fc70bd9a86b5
	github.com/Microsoft/hcsshim v0.8.7 // indirect
	github.com/apache/thrift v0.0.0-20161221203622-b2a4d4ae21c7 // indirect
	github.com/cncf/udpa/go v0.0.0-20200313221541-5f7e5dd04533 // indirect
	github.com/codahale/hdrhistogram v0.0.0-20160425231609-f8ad88b59a58 // indirect
	github.com/containerd/cgroups v0.0.0-20200217135630-d732e370d46d // indirect
	github.com/containerd/console v0.0.0-20191219165238-8375c3424e4d
	github.com/containerd/containerd v1.4.0-0
	github.com/containerd/continuity v0.0.0-20200107194136-26c1120b8d41
	github.com/containerd/fifo v0.0.0-20191213151349-ff969a566b00 // indirect
	github.com/containerd/go-cni v0.0.0-20200107172653-c154a49e2c75
	github.com/containerd/go-runc v0.0.0-20200220073739-7016d3ce2328
	github.com/containerd/ttrpc v0.0.0-20200121165050-0be804eadb15 // indirect
	github.com/containerd/typeurl v0.0.0-20200205145503-b45ef1f1f737 // indirect
	github.com/coreos/go-systemd/v22 v22.0.0
	github.com/docker/cli v0.0.0-20200227165822-2298e6a3fe24
	github.com/docker/distribution v0.0.0-20200223014041-6b972e50feee
	github.com/docker/docker v0.0.0
	github.com/docker/docker-credential-helpers v0.6.0 // indirect
	github.com/docker/go-connections v0.3.0
	github.com/docker/libnetwork v0.8.0-dev.2.0.20200226230617-d8334ccdb9be
	github.com/gofrs/flock v0.7.0
	github.com/gogo/googleapis v1.3.2
	github.com/gogo/protobuf v1.3.1
	github.com/golang/protobuf v1.3.5
	github.com/google/go-cmp v0.4.0
	github.com/google/shlex v0.0.0-20150127133951-6f45313302b9
	github.com/grpc-ecosystem/grpc-opentracing v0.0.0-20180507213350-8e809c8a8645
	github.com/hashicorp/go-immutable-radix v1.0.0
	github.com/hashicorp/golang-lru v0.5.4
	github.com/hashicorp/uuid v0.0.0-20160311170451-ebb0a03e909c // indirect
	github.com/imdario/mergo v0.3.7 // indirect
	github.com/ishidawataru/sctp v0.0.0-20191218070446-00ab2ac2db07 // indirect
	github.com/jaguilar/vt100 v0.0.0-20150826170717-2703a27b14ea
	github.com/kr/text v0.2.0 // indirect
	github.com/mitchellh/hashstructure v0.0.0-20170609045927-2bca23e0e452
	github.com/morikuni/aec v0.0.0-20170113033406-39771216ff4c
	github.com/niemeyer/pretty v0.0.0-20200227124842-a10e7caefd8e // indirect
	github.com/opencontainers/go-digest v1.0.0-rc1
	github.com/opencontainers/image-spec v1.0.1
	github.com/opencontainers/runc v1.0.0-rc9.0.20200221051241-688cf6d43cc4
	github.com/opencontainers/runtime-spec v1.0.1
	github.com/opencontainers/selinux v1.3.2 // indirect
	github.com/opentracing-contrib/go-stdlib v0.0.0-20171029140428-b1a47cfbdd75
	github.com/opentracing/opentracing-go v1.1.0
	github.com/pkg/errors v0.9.1
	github.com/pkg/profile v1.2.1
	github.com/prometheus/client_model v0.2.0 // indirect
	github.com/rogpeppe/go-internal v1.5.2 // indirect
	github.com/serialx/hashring v0.0.0-20190422032157-8b2912629002
	github.com/sirupsen/logrus v1.4.2
	github.com/stretchr/objx v0.2.0 // indirect
	github.com/stretchr/testify v1.5.1
	github.com/syndtr/gocapability v0.0.0-20180916011248-d98352740cb2 // indirect
	github.com/tonistiigi/fsutil v0.0.0-20200225063759-013a9fe6aee2
	github.com/tonistiigi/units v0.0.0-20180711220420-6950e57a87ea
	github.com/uber/jaeger-client-go v0.0.0-20180103221425-e02c85f9069e
	github.com/uber/jaeger-lib v1.2.1 // indirect
	github.com/urfave/cli v1.22.2
	github.com/vishvananda/netlink v1.0.0 // indirect
	github.com/vishvananda/netns v0.0.0-20180720170159-13995c7128cc // indirect
	go.etcd.io/bbolt v1.3.3
	go.undefinedlabs.com/scopeagent v0.1.13
	golang.org/x/crypto v0.0.0-20200317142112-1b76d66859c6
	golang.org/x/exp v0.0.0-20200228211341-fcea875c7e85 // indirect
	golang.org/x/image v0.0.0-20200119044424-58c23975cae1 // indirect
	golang.org/x/mobile v0.0.0-20200222142934-3c8601c510d0 // indirect
	golang.org/x/net v0.0.0-20200301022130-244492dfa37a
	golang.org/x/sync v0.0.0-20200317015054-43a5402ce75a
	golang.org/x/sys v0.0.0-20200317113312-5766fd39f98d
	golang.org/x/time v0.0.0-20191024005414-555d28b269f0
	golang.org/x/tools v0.0.0-20200318150045-ba25ddc85566 // indirect
	google.golang.org/genproto v0.0.0-20200318110522-7735f76e9fa5
	google.golang.org/grpc v1.28.0
	gopkg.in/check.v1 v1.0.0-20200227125254-8fa46927fb4f // indirect
	gopkg.in/yaml.v2 v2.2.8 // indirect
	gotest.tools v2.2.0+incompatible
	gotest.tools/v3 v3.0.2 // indirect
	rsc.io/sampler v1.99.99 // indirect
)

replace github.com/hashicorp/go-immutable-radix => github.com/tonistiigi/go-immutable-radix v0.0.0-20170803185627-826af9ccf0fe

replace github.com/jaguilar/vt100 => github.com/tonistiigi/vt100 v0.0.0-20190402012908-ad4c4a574305

replace github.com/containerd/containerd => github.com/containerd/containerd v1.3.1-0.20200227195959-4d242818bf55

replace github.com/docker/docker => github.com/docker/docker v1.4.2-0.20200227233006-38f52c9fec82
