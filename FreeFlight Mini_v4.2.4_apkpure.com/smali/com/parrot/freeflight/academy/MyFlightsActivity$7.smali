.class Lcom/parrot/freeflight/academy/MyFlightsActivity$7;
.super Ljava/lang/Object;
.source "MyFlightsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/academy/MyFlightsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/academy/MyFlightsActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/academy/MyFlightsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/academy/MyFlightsActivity;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity$7;->this$0:Lcom/parrot/freeflight/academy/MyFlightsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity$7;->this$0:Lcom/parrot/freeflight/academy/MyFlightsActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->access$200(Lcom/parrot/freeflight/academy/MyFlightsActivity;)Lcom/parrot/freeflight/core/academy/AcademyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->getProfile()Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity$7;->this$0:Lcom/parrot/freeflight/academy/MyFlightsActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity$7;->this$0:Lcom/parrot/freeflight/academy/MyFlightsActivity;

    invoke-virtual {v2}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/parrot/freeflight/academy/ProfileActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->startActivity(Landroid/content/Intent;)V

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity$7;->this$0:Lcom/parrot/freeflight/academy/MyFlightsActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity$7;->this$0:Lcom/parrot/freeflight/academy/MyFlightsActivity;

    invoke-virtual {v2}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/parrot/freeflight/academy/AcademyLogInActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
