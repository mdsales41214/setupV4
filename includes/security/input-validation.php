 
<?php
/**
 * Input Validation
 * energievergelijken.trade
 * 
 * Comprehensive validation rules for all user input
 */

declare(strict_types=1);

class Validator
{
    private array $errors = [];
    private array $data = [];

    /**
     * Validate required field
     */
    public function required(string $field, $value, string $message = null): self
    {
        if (empty($value) && $value !== '0') {
            $this->errors[$field][] = $message ?? "{$field} is verplicht";
        } else {
            $this->data[$field] = $value;
        }
        return $this;
    }

    /**
     * Validate email
     */
    public function email(string $field, string $value, string $message = null): self
    {
        if (!filter_var($value, FILTER_VALIDATE_EMAIL)) {
            $this->errors[$field][] = $message ?? "Ongeldig e-mailadres";
        } else {
            $this->data[$field] = $value;
        }
        return $this;
    }

    /**
     * Validate Dutch postcode
     */
    public function postcode(string $field, string $value, string $message = null): self
    {
        $postcode = strtoupper(str_replace(' ', '', $value));
        
        if (!preg_match('/^[1-9][0-9]{3}[A-Z]{2}$/', $postcode)) {
            $this->errors[$field][] = $message ?? "Ongeldige postcode (bijv. 1012AB)";
        } else {
            $this->data[$field] = substr($postcode, 0, 4) . ' ' . substr($postcode, 4);
        }
        return $this;
    }

    /**
     * Validate Dutch phone number
     */
    public function phone(string $field, string $value, string $message = null): self
    {
        $phone = preg_replace('/[^0-9+]/', '', $value);
        
        if (!preg_match('/^(\+31|0)[1-9][0-9]{8}$/', $phone)) {
            $this->errors[$field][] = $message ?? "Ongeldig telefoonnummer";
        } else {
            $this->data[$field] = $phone;
        }
        return $this;
    }

    /**
     * Validate string length
     */
    public function length(string $field, string $value, int $min, int $max, string $message = null): self
    {
        $length = mb_strlen($value);
        
        if ($length < $min || $length > $max) {
            $this->errors[$field][] = $message ?? "{$field} moet tussen {$min} en {$max} tekens zijn";
        } else {
            $this->data[$field] = $value;
        }
        return $this;
    }

    /**
     * Validate minimum length
     */
    public function min_length(string $field, string $value, int $min, string $message = null): self
    {
        if (mb_strlen($value) < $min) {
            $this->errors[$field][] = $message ?? "{$field} moet minimaal {$min} tekens zijn";
        } else {
            $this->data[$field] = $value;
        }
        return $this;
    }

    /**
     * Validate maximum length
     */
    public function max_length(string $field, string $value, int $max, string $message = null): self
    {
        if (mb_strlen($value) > $max) {
            $this->errors[$field][] = $message ?? "{$field} mag maximaal {$max} tekens zijn";
        } else {
            $this->data[$field] = $value;
        }
        return $this;
    }

    /**
     * Validate numeric value
     */
    public function numeric(string $field, $value, string $message = null): self
    {
        if (!is_numeric($value)) {
            $this->errors[$field][] = $message ?? "{$field} moet een nummer zijn";
        } else {
            $this->data[$field] = $value;
        }
        return $this;
    }

    /**
     * Validate integer
     */
    public function integer(string $field, $value, string $message = null): self
    {
        if (!filter_var($value, FILTER_VALIDATE_INT)) {
            $this->errors[$field][] = $message ?? "{$field} moet een geheel getal zijn";
        } else {
            $this->data[$field] = (int) $value;
        }
        return $this;
    }

    /**
     * Validate range
     */
    public function range(string $field, $value, $min, $max, string $message = null): self
    {
        if ($value < $min || $value > $max) {
            $this->errors[$field][] = $message ?? "{$field} moet tussen {$min} en {$max} zijn";
        } else {
            $this->data[$field] = $value;
        }
        return $this;
    }

    /**
     * Validate URL
     */
    public function url(string $field, string $value, string $message = null): self
    {
        if (!filter_var($value, FILTER_VALIDATE_URL)) {
            $this->errors[$field][] = $message ?? "Ongeldige URL";
        } else {
            $this->data[$field] = $value;
        }
        return $this;
    }

    /**
     * Validate pattern (regex)
     */
    public function pattern(string $field, string $value, string $pattern, string $message = null): self
    {
        if (!preg_match($pattern, $value)) {
            $this->errors[$field][] = $message ?? "{$field} heeft een ongeldig formaat";
        } else {
            $this->data[$field] = $value;
        }
        return $this;
    }

    /**
     * Validate in array
     */
    public function in_array(string $field, $value, array $allowed, string $message = null): self
    {
        if (!in_array($value, $allowed, true)) {
            $this->errors[$field][] = $message ?? "Ongeldige waarde voor {$field}";
        } else {
            $this->data[$field] = $value;
        }
        return $this;
    }

    /**
     * Validate energy usage (kWh)
     */
    public function energy_usage(string $field, $value, string $message = null): self
    {
        $usage = (int) $value;
        
        if ($usage < 0 || $usage > 50000) {
            $this->errors[$field][] = $message ?? "Energieverbruik moet tussen 0 en 50.000 kWh zijn";
        } else {
            $this->data[$field] = $usage;
        }
        return $this;
    }

    /**
     * Check if validation passed
     */
    public function passes(): bool
    {
        return empty($this->errors);
    }

    /**
     * Check if validation failed
     */
    public function fails(): bool
    {
        return !$this->passes();
    }

    /**
     * Get all errors
     */
    public function get_errors(): array
    {
        return $this->errors;
    }

    /**
     * Get first error for a field
     */
    public function get_error(string $field): ?string
    {
        return $this->errors[$field][0] ?? null;
    }

    /**
     * Get validated data
     */
    public function get_data(): array
    {
        return $this->data;
    }

    /**
     * Get specific validated value
     */
    public function get(string $field)
    {
        return $this->data[$field] ?? null;
    }
}