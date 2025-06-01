<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Registro de Participación - UsuariosCanaco</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container mt-5">
        <h2 class="mb-4">Registro de Participación</h2>

        @if ($errors->any())
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif

        <form action="{{ route('register') }}" method="POST" enctype="multipart/form-data">
            @csrf

            <div class="mb-3">
                <label for="first_name" class="form-label">Nombre(s)</label>
                <input type="text" name="first_name" id="first_name" class="form-control" required value="{{ old('first_name') }}">
            </div>

            <div class="mb-3">
                <label for="last_name" class="form-label">Apellidos</label>
                <input type="text" name="last_name" id="last_name" class="form-control" required value="{{ old('last_name') }}">
            </div>

            <div class="mb-3">
                <label for="email" class="form-label">Correo electrónico</label>
                <input type="email" name="email" id="email" class="form-control" required value="{{ old('email') }}">
            </div>

            <div class="mb-3">
                <label for="address" class="form-label">Dirección</label>
                <input type="text" name="address" id="address" class="form-control" required value="{{ old('address') }}">
            </div>

            <div class="mb-3">
                <label for="store" class="form-label">Establecimiento donde compró</label>
                <select name="store" id="store" class="form-select" required>
                    <option value="" disabled selected>Seleccione un establecimiento</option>
                    <option value="Supermercado La Canasta" {{ old('store') == 'Supermercado La Canasta' ? 'selected' : '' }}>Supermercado La Canasta</option>
                    <option value="Tiendas El Buen Precio" {{ old('store') == 'Tiendas El Buen Precio' ? 'selected' : '' }}>Tiendas El Buen Precio</option>
                    <option value="Mercado Central" {{ old('store') == 'Mercado Central' ? 'selected' : '' }}>Mercado Central</option>
                    <option value="Farmacias Salud Total" {{ old('store') == 'Farmacias Salud Total' ? 'selected' : '' }}>Farmacias Salud Total</option>
                    <option value="Electrónica Mundial" {{ old('store') == 'Electrónica Mundial' ? 'selected' : '' }}>Electrónica Mundial</option>
                </select>
            </div>

            <div class="mb-3">
                <label for="amount" class="form-label">Monto de la compra (mínimo 200)</label>
                <input type="number" name="amount" id="amount" class="form-control" min="201" step="0.01" required value="{{ old('amount') }}">
            </div>

            <div class="mb-3">
                <label for="purchase_date" class="form-label">Fecha de la compra</label>
                <input type="date" name="purchase_date" id="purchase_date" class="form-control" required value="{{ old('purchase_date') }}">
            </div>

            <div class="mb-3">
                <label for="phone" class="form-label">Teléfono (10 dígitos)</label>
                <input type="tel" name="phone" id="phone" class="form-control" pattern="[0-9]{10}" maxlength="10" required value="{{ old('phone') }}">
            </div>

            <div class="mb-3">
                <label for="ticket_photo" class="form-label">Foto del ticket de compra</label>
                <input type="file" name="ticket_photo" id="ticket_photo" class="form-control" accept="image/*" required>
            </div>

            <button type="submit" class="btn btn-primary">Registrar Participación</button>
        </form>
    </div>
</body>
</html>
