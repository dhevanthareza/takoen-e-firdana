@extends('layouts.app')

@section('title')
Takoen | Profile
@endsection

@section('content')
<profile-view inline-template>
<div>
    <section class="hero is-info">
        <div class="hero-body">
            <div class="container">
                <article class="media">
                    <div class="media-left">
                        <figure class="image is-64x64">
                            <img src="{{ asset('/storage/'.$profile->avatar) }}" class="is-rounded" alt="Image">
                        </figure>
                    </div>
                    <div class="media-content">
                        <div class="content">
                            <h5 class="title is-5 is-inline">{{ $profile->name }}</h5>
                            <p>
                                <small class="has-text-weight-bold">{{ '@'.$profile->username }}</small>
                                <small>joined {{ $profile->created_at->diffForHumans() }}</small>
                            </p>
                        </div>
                    </div>
                </article>
            </div>
        </div>
    </section>

    <section class="container py-3">
        <b-tabs type="is-boxed" size="is-small" position="is-centered">
            <b-tab-item label="Profile" icon="account">
                <profile :profile="profile"></profile>
            </b-tab-item>
            <b-tab-item label="Discussions" icon="message-reply-text">
                <discussions :threads="threads"></discussions>
            </b-tab-item>
            <b-tab-item label="Replies" icon="message-reply">
                <replies :replies="replies"></replies>
            </b-tab-item>
            <b-tab-item label="Activity" icon="comment-account">
                <activity :activity="activity"></activity>
            </b-tab-item>
        </b-tabs>
    </section>
</div>
</profile-view>
@endsection
