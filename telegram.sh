function telegram {
	local token=$TELEGRAM_TOKEN

	curl -s -X POST "https://api.telegram.org/bot${token}/sendAudio" \
		-d chat_id="-1001576728891" \
		-d audio="cdn.usmon.me/audio-files/uwu.mp3" \
		-d caption="${1}"

	echo ""
}
