<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Trivia - UsuariosCanaco</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body class="bg-light">
    <div class="container mt-5">
        <h2 class="mb-4">Trivia</h2>

        @if(session('message'))
            <script>
                Swal.fire({
                    title: '{{ session('message.title') }}',
                    text: '{{ session('message.text') }}',
                    icon: '{{ session('message.icon') }}',
                    confirmButtonText: 'Aceptar'
                });
            </script>
        @endif

        <form action="{{ route('trivia.submit') }}" method="POST">
            @csrf

            @foreach ($questions as $index => $question)
                <div class="mb-4">
                    <h5>Pregunta {{ $index + 1 }}: {{ $question->question }}</h5>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="answers[{{ $question->id }}]" id="q{{ $question->id }}a" value="option_a" required>
                        <label class="form-check-label" for="q{{ $question->id }}a">
                            {{ $question->option_a }}
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="answers[{{ $question->id }}]" id="q{{ $question->id }}b" value="option_b" required>
                        <label class="form-check-label" for="q{{ $question->id }}b">
                            {{ $question->option_b }}
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="answers[{{ $question->id }}]" id="q{{ $question->id }}c" value="option_c" required>
                        <label class="form-check-label" for="q{{ $question->id }}c">
                            {{ $question->option_c }}
                        </label>
                    </div>
                </div>
            @endforeach

            <button type="submit" class="btn btn-success">Enviar Respuestas</button>
        </form>
    </div>
</body>
</html>
