.class Lcom/parrot/freeflight/SplashActivity$TimeoutHandler;
.super Landroid/os/Handler;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeoutHandler"
.end annotation


# instance fields
.field private final mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/parrot/freeflight/SplashActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/SplashActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/parrot/freeflight/SplashActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 218
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 219
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parrot/freeflight/SplashActivity$TimeoutHandler;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 220
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 224
    iget-object v1, p0, Lcom/parrot/freeflight/SplashActivity$TimeoutHandler;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/SplashActivity;

    .line 225
    .local v0, "activity":Lcom/parrot/freeflight/SplashActivity;
    if-eqz v0, :cond_0

    .line 226
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/SplashActivity;->access$302(Lcom/parrot/freeflight/SplashActivity;Z)Z

    .line 227
    invoke-static {v0}, Lcom/parrot/freeflight/SplashActivity;->access$200(Lcom/parrot/freeflight/SplashActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 228
    invoke-virtual {v0}, Lcom/parrot/freeflight/SplashActivity;->nextScreen()V

    .line 231
    :cond_0
    return-void
.end method
