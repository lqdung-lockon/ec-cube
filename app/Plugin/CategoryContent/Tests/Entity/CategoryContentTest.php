<?php

namespace Plugin\CategoryContent\Tests\Entity;

use Plugin\CategoryContent\Entity\CategoryContent;
use Eccube\Tests\EccubeTestCase;

/**
 * Plugin Entity Test
 *
 * @author Dung Le
 */
class CategoryContentTest extends EccubeTestCase
{

    public function setUp()
    {
        parent::setUp();
    }

    public function testConstructor()
    {
        $CategoryContent = new CategoryContent();

        $this->expected = 0;
        $this->actual = $CategoryContent->getId();
        $this->verify();

        $this->expected = null;
        $this->actual = $CategoryContent->getContent();
        $this->verify();
    }

    public function testSetId()
    {
        $CategoryContent = new CategoryContent();

        $this->expected = 1;

        $CategoryContent->setId($this->expected);

        $this->actual = $CategoryContent->getId();
        $this->verify();
    }

    public function testSetContent()
    {
        $CategoryContent = new CategoryContent();

        $this->expected = 'This is a test';

        $CategoryContent->setContent($this->expected);

        $this->actual = $CategoryContent->getContent();
        $this->verify();
    }
}
