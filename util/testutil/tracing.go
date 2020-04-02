package testutil

import (
	"context"
	"testing"

	"go.undefinedlabs.com/scopeagent"
	scopetesting "go.undefinedlabs.com/scopeagent/instrumentation/testing"
)

func GetContext(t *testing.T) context.Context {
	return scopeagent.GetContextFromTest(t)
}

// This method needs to be called inside of the subtest code.
func SetTestCode(t *testing.T) {
	scopeagent.SetTestCodeFromCallerSkip(t, 2)
}

func GetTracedTest(t *testing.T) *scopetesting.Test {
	return scopeagent.GetTest(t)
}
