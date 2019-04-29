<?php 

namespace app\Implementations;

use App\Interfaces\SquareRootInterface;

class SquareRoot
{
    protected $number;

    public function __construct()
    {
        $this->number = mt_rand(1,10);
    }

    public function getRoot()
    {
        $this->number = $this->number * $this->number;
    }

    public function regenerate()
    {
        $this->number = mt_rand(1,10);
    }

    public function getValue()
    {
        return $this->number;
    }
}
