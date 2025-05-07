function addelement(term, desc) {
	var completelist= document.getElementById("theList");

	if (term == "You") {
		completelist.innerHTML += "<dt>" + "<img src='../../img/TaosAI/you.png' width='40' height='40'>" + "</dt>";
		completelist.innerHTML += "<dd>" + desc + "</dd>";
	}
	else {
		completelist.innerHTML += "<dt>" + "<img src='../../img/TaosAI/chatgpt.png' width='40' height='40'>" + "</dt>";
		completelist.innerHTML += "<dd>" + desc + "</dd>";
	}
}

document.getElementById("submit-button").addEventListener("click", async () => {
    const inputText = document.getElementById("input-text");
    const outputText = document.getElementById("output-text");

    if (inputText) {
		addelement("You", inputText.value);		
        const response = await chatGPT(inputText.value);
		inputText.value = "";
		addelement("ChatGPT", response);
    }
});

// chatgpt引用
async function chatGPT(message) {
	const apiKey = 'sk-86ncga0jKK6GOzyA_DO-HF4dd2ZLWv_MhFDOdhpvt0T3BlbkFJ6-SuQ1SYzGflGHm9hHRgMyJM6Yq-EiAJvi9PAZeVgA';
	const endpoint = 'https://api.openai.com/v1/chat/completions';

	const data = {
		messages: [{ role: 'system', content: 'You' }, { role: 'user', content: message }],
		model:'gpt-4o-mini',
	};

	const requestOptions = {
		method: 'POST',
		headers: {
			'Content-Type': 'application/json',
			'Authorization': `Bearer ${apiKey}`,
		},
		body: JSON.stringify({
            model: "gpt-4o-mini",
            messages: [
                {
                    "role": "system",
                    "content": "You are a helpful assistant."
                },
                {
                    "role" : "user",
                    "content": message
                }
            ]
        })
	};
	try {
        const response = await fetch(endpoint, requestOptions);
        const result = await response.json();

        // 打印完整的响应对象
        console.log('Full API Response:', result);

        if (result.error) {
            console.error('API Error:', result.error);
            return `Error: ${result.error.message}. Please try again.`;
        }

        if (result.choices && result.choices.length > 0) {
            return result.choices[0].message.content;
        } else {
            console.error('Unexpected API response structure:', result);
            return "Unexpected response format. Please try again.";
        }
    } catch (error) {
        console.error('Network or Fetch Error:', error);
        return "An error occurred. Please try again.";
    }
}


