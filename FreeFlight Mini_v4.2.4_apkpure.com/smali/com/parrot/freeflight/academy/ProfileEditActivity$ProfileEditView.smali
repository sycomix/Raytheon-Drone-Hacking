.class public interface abstract Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditView;
.super Ljava/lang/Object;
.source "ProfileEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/academy/ProfileEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProfileEditView"
.end annotation


# virtual methods
.method public abstract applyUiTheme(Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V
    .param p1    # Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract destroy()V
.end method

.method public abstract notifyChanged(Lcom/parrot/freeflight/academy/ProfileEditController$State;)V
    .param p1    # Lcom/parrot/freeflight/academy/ProfileEditController$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setData(Lcom/parrot/arsdk/aracademy/ARAcademyProfile;)V
    .param p1    # Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract updateEditedProfile(Lcom/parrot/arsdk/aracademy/ARAcademyProfile;)V
    .param p1    # Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
