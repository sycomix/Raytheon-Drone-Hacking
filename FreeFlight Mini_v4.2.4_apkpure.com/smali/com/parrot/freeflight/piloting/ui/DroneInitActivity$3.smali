.class Lcom/parrot/freeflight/piloting/ui/DroneInitActivity$3;
.super Ljava/lang/Object;
.source "DroneInitActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/DroneInitActivity$3;->this$0:Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThemeChanged()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DroneInitActivity$3;->this$0:Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;->access$200(Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;)V

    .line 79
    return-void
.end method
