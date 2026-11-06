
import re
import csv
from pathlib import Path


def extract_features(text):

    words = re.findall(r"\b[\w'-]+\b", text)

    sentences = re.split(r'[.!?]+', text)
    sentences = [s.strip() for s in sentences if s.strip()]

    number_of_sentences = len(sentences)

    average_word_length = (
        sum(len(word) for word in words) / len(words)
        if words else 0
    )

    average_sentence_length = (
        len(words) / number_of_sentences
        if number_of_sentences else 0
    )

    unique_words = set(word.lower() for word in words)

    lexical_diversity = (
        len(unique_words) / len(words)
        if words else 0
    )

    punctuation_count = len(re.findall(r'[^\w\s]', text))

    punctuation_frequency = (
        (punctuation_count / len(words)) * 100
        if words else 0
    )

    return {
        "Number_of_Sentences": number_of_sentences,
        "Average_Word_Length": round(average_word_length, 2),
        "Average_Sentence_Length": round(average_sentence_length, 2),
        "Lexical_Diversity": round(lexical_diversity, 3),
        "Punctuation_Frequency": round(punctuation_frequency, 2)
    }


input_folder = Path.home() / "texts"

output_file = "features.csv"

results = []

for file in sorted(input_folder.glob("*.txt")):

    text = file.read_text(encoding="utf-8")

    features = extract_features(text)

    results.append({
        "Text": file.name,
        **features
    })


fieldnames = [
    "Text",
    "Number_of_Sentences",
    "Average_Word_Length",
    "Average_Sentence_Length",
    "Lexical_Diversity",
    "Punctuation_Frequency"
]

with open(output_file, "w", newline="", encoding="utf-8") as csvfile:

    writer = csv.DictWriter(csvfile, fieldnames=fieldnames)

    writer.writeheader()
    writer.writerows(results)


print("Feature extraction completed!")
print("Number of texts processed:", len(results))
print("Output saved to:", output_file)
