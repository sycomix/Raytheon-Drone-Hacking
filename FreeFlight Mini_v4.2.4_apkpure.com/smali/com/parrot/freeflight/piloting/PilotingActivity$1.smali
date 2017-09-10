.class Lcom/parrot/freeflight/piloting/PilotingActivity$1;
.super Ljava/lang/Object;
.source "PilotingActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/PilotingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/PilotingActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/PilotingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/PilotingActivity;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/PilotingActivity$1;->this$0:Lcom/parrot/freeflight/piloting/PilotingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackButtonClick()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity$1;->this$0:Lcom/parrot/freeflight/piloting/PilotingActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/PilotingActivity;->finish()V

    .line 82
    return-void
.end method
