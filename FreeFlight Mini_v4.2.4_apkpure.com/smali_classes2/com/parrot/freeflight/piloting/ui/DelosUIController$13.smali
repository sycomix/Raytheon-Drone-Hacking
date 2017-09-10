.class Lcom/parrot/freeflight/piloting/ui/DelosUIController$13;
.super Ljava/lang/Object;
.source "DelosUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/Model$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/DelosUIController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    .prologue
    .line 692
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$13;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$13;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$500(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$13;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$500(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->update()V

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$13;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$2200(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->update()V

    .line 699
    return-void
.end method
