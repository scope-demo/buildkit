package contentutil

import (
	"bytes"
	"go.undefinedlabs.com/scopeagent"
	"testing"

	"github.com/containerd/containerd/content"
	"github.com/containerd/containerd/errdefs"
	digest "github.com/opencontainers/go-digest"
	ocispec "github.com/opencontainers/image-spec/specs-go/v1"
	"github.com/pkg/errors"
	"github.com/stretchr/testify/require"
)

func TestMultiProvider(t *testing.T) {
	t.Parallel()
	ctx := scopeagent.GetContextFromTest(t)

	b0 := NewBuffer()
	b1 := NewBuffer()

	err := content.WriteBlob(ctx, b0, "foo", bytes.NewBuffer([]byte("foo0")), ocispec.Descriptor{Size: -1})
	require.NoError(t, err)

	err = content.WriteBlob(ctx, b1, "foo", bytes.NewBuffer([]byte("foo1")), ocispec.Descriptor{Size: -1})
	require.NoError(t, err)

	mp := NewMultiProvider(nil)
	mp.Add(digest.FromBytes([]byte("foo0")), b0)
	mp.Add(digest.FromBytes([]byte("foo1")), b1)

	dt, err := content.ReadBlob(ctx, mp, ocispec.Descriptor{Digest: digest.FromBytes([]byte("foo0"))})
	require.NoError(t, err)
	require.Equal(t, string(dt), "foo0")

	dt, err = content.ReadBlob(ctx, mp, ocispec.Descriptor{Digest: digest.FromBytes([]byte("foo1"))})
	require.NoError(t, err)
	require.Equal(t, string(dt), "foo1")

	_, err = content.ReadBlob(ctx, mp, ocispec.Descriptor{Digest: digest.FromBytes([]byte("foo2"))})
	require.Error(t, err)
	require.Equal(t, errors.Cause(err), errdefs.ErrNotFound)
}
