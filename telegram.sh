function telegram {
	local token=$TELEGRAM_TOKEN

	curl -s -X POST "https://api.telegram.org/bot${token}/sendMessage" \
		-d chat_id="-1001576728891" \
		-d text="${1}"

	echo ""
}
