.class public interface abstract Lcom/parrot/freeflight/piloting/preference/ILocalPreference;
.super Ljava/lang/Object;
.source "ILocalPreference.java"


# virtual methods
.method public abstract getSharedPreferences()Landroid/content/SharedPreferences;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract onPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)Z
    .param p1    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
