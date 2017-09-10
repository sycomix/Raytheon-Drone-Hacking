.class public final Lcom/parrot/freeflight3/ARSocialNetworkService$ARSocialNetworkServiceBinder;
.super Landroid/os/Binder;
.source "ARSocialNetworkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight3/ARSocialNetworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ARSocialNetworkServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight3/ARSocialNetworkService;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight3/ARSocialNetworkService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight3/ARSocialNetworkService;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$ARSocialNetworkServiceBinder;->this$0:Lcom/parrot/freeflight3/ARSocialNetworkService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/parrot/freeflight3/ARSocialNetworkService;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$ARSocialNetworkServiceBinder;->this$0:Lcom/parrot/freeflight3/ARSocialNetworkService;

    return-object v0
.end method
