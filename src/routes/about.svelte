<script context="module">
    import { browser, dev } from "$app/env";

    // we don't need any JS on this page, though we'll load
    // it in dev so that we get hot module replacement...
    export const hydrate = dev;

    // ...but if the client-side router is already loaded
    // (i.e. we came here from elsewhere in the app), use it
    export const router = browser;

    // since there's no dynamic data here, we can prerender
    // it so that it gets served as a static asset in prod
    export const prerender = true;
</script>

<svelte:head>
    <title>About</title>
    <meta name="description" content="About this app" />
</svelte:head>

<div class="content">
    <h1>About this app</h1>

    <h4>Tech : Svelte, Git, Docker, Jenkins</h4>
    <p>
        This app will be deployed in docker container on our home server using
        Jenkins pipeline.
        <br />
        Jenkins is an automation tool for building, testing, deploying applications.
        It makes continuous integration and continuous delivery of your code very
        easy. Automatic
    </p>
    <!-- <pre /> -->
    <h4>Steps</h4>
    <ul>
        <li>create a pipeline Jenkins job</li>
        <li>define your build, test, deploy stages inside a Jenkisfile</li>
        <li>provide path to your git repositry in Jenkinfile</li>
        <li>
            add this Jenkinsfile to root of project directory or inside Jenkins
            itself
        </li>
        <li>
            now code changes to given branch on git repo will automatically
            trigger the Jenkins job
        </li>
    </ul>
</div>

<style>
    .content {
        width: 100%;
        max-width: var(--column-width);
        margin: var(--column-margin-top) auto 0 auto;
    }
</style>
