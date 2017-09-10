.class public interface abstract Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;
.super Ljava/lang/Object;
.source "ProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/academy/ProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProfileView"
.end annotation


# virtual methods
.method public abstract updateOtherUserInfos(Ljava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyPilot;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/arsdk/aracademy/ARAcademyPilot;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract updateUserInfos(Lcom/parrot/arsdk/aracademy/ARAcademyProfile;)V
    .param p1    # Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
