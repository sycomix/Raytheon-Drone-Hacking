.class public interface abstract Lcom/parrot/freeflight/settings/ISettingsViewHolderFactory;
.super Ljava/lang/Object;
.source "ISettingsViewHolderFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/parrot/freeflight/core/model/Model;",
        "U:",
        "Lcom/parrot/freeflight/core/model/Model;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract create(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILcom/parrot/freeflight/piloting/ui/util/ProductColor;)Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Landroid/view/ViewGroup;",
            "I",
            "Lcom/parrot/freeflight/piloting/ui/util/ProductColor;",
            ")",
            "Lcom/parrot/freeflight/settings/view/SettingsViewHolder",
            "<",
            "Lcom/parrot/freeflight/settings/model/SettingsEntry",
            "<**TT;TU;>;>;"
        }
    .end annotation
.end method
