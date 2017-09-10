.class Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher$1;
.super Ljava/lang/Object;
.source "ARDiscoveryNsdPublisher.java"

# interfaces
.implements Landroid/net/nsd/NsdManager$RegistrationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;->initializeRegistrationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;


# direct methods
.method constructor <init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher$1;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegistrationFailed(Landroid/net/nsd/NsdServiceInfo;I)V
    .locals 0
    .param p1, "serviceInfo"    # Landroid/net/nsd/NsdServiceInfo;
    .param p2, "errorCode"    # I

    .prologue
    .line 178
    return-void
.end method

.method public onServiceRegistered(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 2
    .param p1, "NsdServiceInfo"    # Landroid/net/nsd/NsdServiceInfo;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher$1;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;

    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;->access$002(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    return-void
.end method

.method public onServiceUnregistered(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 0
    .param p1, "arg0"    # Landroid/net/nsd/NsdServiceInfo;

    .prologue
    .line 185
    return-void
.end method

.method public onUnregistrationFailed(Landroid/net/nsd/NsdServiceInfo;I)V
    .locals 0
    .param p1, "serviceInfo"    # Landroid/net/nsd/NsdServiceInfo;
    .param p2, "errorCode"    # I

    .prologue
    .line 191
    return-void
.end method
