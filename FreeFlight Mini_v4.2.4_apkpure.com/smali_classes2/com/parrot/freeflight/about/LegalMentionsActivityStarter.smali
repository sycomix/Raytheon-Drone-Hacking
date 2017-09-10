.class public Lcom/parrot/freeflight/about/LegalMentionsActivityStarter;
.super Ljava/lang/Object;
.source "LegalMentionsActivityStarter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static startNextActivity(Lcom/parrot/freeflight/about/LegalMentionsActivity;)V
    .locals 2
    .param p0, "activity"    # Lcom/parrot/freeflight/about/LegalMentionsActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 11
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/about/LegalMentionsActivity;->startActivity(Landroid/content/Intent;)V

    .line 12
    return-void
.end method
