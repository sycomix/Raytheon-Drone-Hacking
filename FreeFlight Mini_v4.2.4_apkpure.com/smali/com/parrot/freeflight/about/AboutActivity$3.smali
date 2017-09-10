.class Lcom/parrot/freeflight/about/AboutActivity$3;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/about/AboutActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/about/AboutActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/about/AboutActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/about/AboutActivity;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/parrot/freeflight/about/AboutActivity$3;->this$0:Lcom/parrot/freeflight/about/AboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 77
    invoke-static {}, Lcom/parrot/freeflight/google/Analytic;->getInstance()Lcom/parrot/freeflight/google/Analytic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/google/Analytic;->trackMenuAboutLegal()V

    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/about/AboutActivity$3;->this$0:Lcom/parrot/freeflight/about/AboutActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/parrot/freeflight/about/AboutActivity$3;->this$0:Lcom/parrot/freeflight/about/AboutActivity;

    const-class v3, Lcom/parrot/freeflight/about/LegalMentionsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/about/AboutActivity;->startActivity(Landroid/content/Intent;)V

    .line 79
    return-void
.end method
