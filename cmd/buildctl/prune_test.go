package main

import (
	"github.com/moby/buildkit/util/testutil"
	"testing"

	"github.com/moby/buildkit/util/testutil/integration"
	"github.com/stretchr/testify/assert"
)

func testPrune(t *testing.T, sb integration.Sandbox) {
	testutil.SetTestCode(t)

	cmd := sb.Cmd("prune")
	err := cmd.Run()
	assert.NoError(t, err)
}
