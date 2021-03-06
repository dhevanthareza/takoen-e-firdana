@extends('layouts.app')

@section('title')
Takoen | {{ $thread->title }}
@endsection

@section('content')
<thread-view initial-replies-count="{{ $thread->replies_count }}" initial-follows-count="{{ $thread->followers()->count() }}" inline-template>
<div class="container my-5 px-3">
    <h1 class="title is-4 my-5">
        {{ $thread->title }}
        @if($thread->updated_at)<span class="subtitle is-6">(Edited)</span>@endif
    </h1>
    <article class="media">
        <div class="media-left">
            <figure class="image is-64x64">
                <img class="is-rounded" src="{{ asset('/storage/'.$thread->creator->avatar) }}">
            </figure>
        </div>
        <div class="media-content">
            <div class="content">
                <div>
                    <h6 class="subtitle is-6 is-inline">{{ $thread->creator->name }}</h6>
                    <small>{{ '@'.$thread->creator->username }}</small>
                    <small> · {{ \Carbon\Carbon::parse($thread->created_at)->diffForHumans() }}</small>
                </div>
                <p>{!! $thread->content !!}</p>
            </div>
            <nav class="level is-mobile">
                <div class="level-left">
                    @if(auth()->check())
                        <a href="#reply" class="level-item has-text-dark" title="Write a reply">
                            <span class="icon is-small"><i class="fas fa-reply"></i></span>
                        </a>
                        · &nbsp;
                    @endif
                    <span class="level-item" title="Followers">
                        <span v-text="followsCount"></span> &nbsp;
                        <span class="icon is-small"><i class="fas fa-user"></i></span>
                    </span>
                    @if(auth()->check() && auth()->user()->email_verified_at)
                        · &nbsp;
                        <span class="level-item">
                            <follow-button @followed="followsCount++"
                                           @unfollowed="followsCount--"
                                           :active="{{ json_encode($thread->isFollowedTo) }}">
                            </follow-button>
                        </span>
                    @endif
                </div>
                <div class="level-right">
                    @if(auth()->check() && auth()->user()->email_verified_at && auth()->id() === $thread->user_id)
                        @if($thread->closed_at)
                            <i class="fas fa-comment-slash mr-2"></i>
                            <a @click="openThread">Open Thread</a>
                        @else
                            <a @click="closeThread">Close Thread</a>
                        @endif
                    @endif
                </div>
            </nav>
            <replies @added="repliesCount++"
                     @removed="repliesCount--"
                     :thread_user_id="{{ json_encode($thread->user_id) }}"
                     :best_reply_id="{{ json_encode($thread->best_reply_id) }}"
                     :closed="{{ json_encode($thread->closed_at) }}">
            </replies>
        </div>
        <figure class="media-right">
            @if(auth()->id() === $thread->user_id)
                <span class="is-size-7">
                    <a class="has-text-dark" href="{{ $thread->path() }}/edit">
                        <i class="fas fa-edit"></i>
                    </a>
                </span>
            @endif
        </figure>
    </article>
</div>
</thread-view>
@endsection
