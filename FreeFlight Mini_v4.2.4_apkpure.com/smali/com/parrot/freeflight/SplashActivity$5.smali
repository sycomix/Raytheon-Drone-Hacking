.class Lcom/parrot/freeflight/SplashActivity$5;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/SplashActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/SplashActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/SplashActivity;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/parrot/freeflight/SplashActivity$5;->this$0:Lcom/parrot/freeflight/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/parrot/freeflight/SplashActivity$5;->this$0:Lcom/parrot/freeflight/SplashActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/SplashActivity;->access$202(Lcom/parrot/freeflight/SplashActivity;Z)Z

    .line 208
    iget-object v0, p0, Lcom/parrot/freeflight/SplashActivity$5;->this$0:Lcom/parrot/freeflight/SplashActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/SplashActivity;->access$300(Lcom/parrot/freeflight/SplashActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/parrot/freeflight/SplashActivity$5;->this$0:Lcom/parrot/freeflight/SplashActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/SplashActivity;->nextScreen()V

    .line 211
    :cond_0
    return-void
.end method
