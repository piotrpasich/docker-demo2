<?php

namespace Papi\PhpersBundle\Controller;

use Papi\PhpersBundle\Entity\User;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Response;

class DefaultController extends Controller
{
    public function indexAction()
    {
        $em = $this->getDoctrine()->getEntityManager();
        $userRepository = $em->getRepository('PapiPhpersBundle:User');

        return $this->render('PapiPhpersBundle:Default:index.html.twig', [
            'users' => $userRepository->findAll()
        ]);
    }

    public function generateAction()
    {
        $em = $this->getDoctrine()->getEntityManager();

        $faker = \Faker\Factory::create();

        for ($i=0;$i<20;$i++) {
            $user = new User();
            $user->setEmail($faker->email);
            $user->setUsername($faker->name);
            $user->setEnabled($faker->boolean());

            $em->persist($user);
        }
        $em->flush();

        return new Response('Content generated properly');
    }
}
