package main

import (
	"github.com/moby/buildkit/util/testutil"
	"testing"

	"github.com/moby/buildkit/util/testutil/integration"
	"github.com/stretchr/testify/require"
)

func init() {
	integration.InitOCIWorker()
	integration.InitContainerdWorker()
}

func TestCLIIntegration(t *testing.T) {
	integration.Run(t, []integration.Test{
		testDiskUsage,
		testBuildWithLocalFiles,
		testBuildLocalExporter,
		testBuildContainerdExporter,
		testPrune,
		testUsage,
	},
		integration.WithMirroredImages(integration.OfficialImages("busybox:latest")),
	)
}

func testUsage(t *testing.T, sb integration.Sandbox) {
	testutil.SetTestCode(t)

	require.NoError(t, sb.Cmd().Run())

	require.NoError(t, sb.Cmd("--help").Run())
}
