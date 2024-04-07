func TestExecuteCommand(t *testing.T) {
	cmd := exec.Command("true")
	err := cmd.Run()
	assert.NoError(t, err, "Command execution should not return an error")
}
