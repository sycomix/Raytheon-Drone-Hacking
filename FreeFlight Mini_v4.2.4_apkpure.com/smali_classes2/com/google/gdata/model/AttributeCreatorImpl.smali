.class final Lcom/google/gdata/model/AttributeCreatorImpl;
.super Lcom/google/gdata/model/MetadataCreatorImpl;
.source "AttributeCreatorImpl.java"

# interfaces
.implements Lcom/google/gdata/model/AttributeCreator;


# direct methods
.method constructor <init>(Lcom/google/gdata/model/MetadataRegistry;Lcom/google/gdata/model/TransformKey;)V
    .locals 0
    .param p1, "root"    # Lcom/google/gdata/model/MetadataRegistry;
    .param p2, "transformKey"    # Lcom/google/gdata/model/TransformKey;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/model/MetadataCreatorImpl;-><init>(Lcom/google/gdata/model/MetadataRegistry;Lcom/google/gdata/model/TransformKey;)V

    .line 36
    return-void
.end method


# virtual methods
.method public bridge synthetic setName(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/AttributeCreator;
    .locals 1
    .param p1, "x0"    # Lcom/google/gdata/model/QName;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/AttributeCreatorImpl;->setName(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/AttributeCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public setName(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/AttributeCreatorImpl;
    .locals 1
    .param p1, "name"    # Lcom/google/gdata/model/QName;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/google/gdata/model/MetadataCreatorImpl;->setName(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/MetadataCreatorImpl;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/AttributeCreatorImpl;

    return-object v0
.end method

.method public bridge synthetic setName(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/MetadataCreator;
    .locals 1
    .param p1, "x0"    # Lcom/google/gdata/model/QName;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/AttributeCreatorImpl;->setName(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/AttributeCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setName(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/MetadataCreatorImpl;
    .locals 1
    .param p1, "x0"    # Lcom/google/gdata/model/QName;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/AttributeCreatorImpl;->setName(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/AttributeCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setRequired(Z)Lcom/google/gdata/model/AttributeCreator;
    .locals 1
    .param p1, "x0"    # Z

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/AttributeCreatorImpl;->setRequired(Z)Lcom/google/gdata/model/AttributeCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public setRequired(Z)Lcom/google/gdata/model/AttributeCreatorImpl;
    .locals 1
    .param p1, "required"    # Z

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/google/gdata/model/MetadataCreatorImpl;->setRequired(Z)Lcom/google/gdata/model/MetadataCreatorImpl;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/AttributeCreatorImpl;

    return-object v0
.end method

.method public bridge synthetic setRequired(Z)Lcom/google/gdata/model/MetadataCreator;
    .locals 1
    .param p1, "x0"    # Z

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/AttributeCreatorImpl;->setRequired(Z)Lcom/google/gdata/model/AttributeCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setRequired(Z)Lcom/google/gdata/model/MetadataCreatorImpl;
    .locals 1
    .param p1, "x0"    # Z

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/AttributeCreatorImpl;->setRequired(Z)Lcom/google/gdata/model/AttributeCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method setSource(Lcom/google/gdata/model/Path;Lcom/google/gdata/model/TransformKey;)V
    .locals 1
    .param p1, "path"    # Lcom/google/gdata/model/Path;
    .param p2, "key"    # Lcom/google/gdata/model/TransformKey;

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Lcom/google/gdata/model/MetadataCreatorImpl;->setSource(Lcom/google/gdata/model/Path;Lcom/google/gdata/model/TransformKey;)V

    .line 72
    invoke-static {p1}, Lcom/google/gdata/model/PathAdapter;->valueAdapter(Lcom/google/gdata/model/Path;)Lcom/google/gdata/model/PathAdapter$ValueAdapter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/AttributeCreatorImpl;->setVirtualValue(Lcom/google/gdata/model/Metadata$VirtualValue;)Lcom/google/gdata/model/AttributeCreatorImpl;

    .line 73
    return-void
.end method

.method public bridge synthetic setVirtualValue(Lcom/google/gdata/model/Metadata$VirtualValue;)Lcom/google/gdata/model/AttributeCreator;
    .locals 1
    .param p1, "x0"    # Lcom/google/gdata/model/Metadata$VirtualValue;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/AttributeCreatorImpl;->setVirtualValue(Lcom/google/gdata/model/Metadata$VirtualValue;)Lcom/google/gdata/model/AttributeCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public setVirtualValue(Lcom/google/gdata/model/Metadata$VirtualValue;)Lcom/google/gdata/model/AttributeCreatorImpl;
    .locals 1
    .param p1, "virtualValue"    # Lcom/google/gdata/model/Metadata$VirtualValue;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/google/gdata/model/MetadataCreatorImpl;->setVirtualValue(Lcom/google/gdata/model/Metadata$VirtualValue;)Lcom/google/gdata/model/MetadataCreatorImpl;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/AttributeCreatorImpl;

    return-object v0
.end method

.method public bridge synthetic setVirtualValue(Lcom/google/gdata/model/Metadata$VirtualValue;)Lcom/google/gdata/model/MetadataCreator;
    .locals 1
    .param p1, "x0"    # Lcom/google/gdata/model/Metadata$VirtualValue;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/AttributeCreatorImpl;->setVirtualValue(Lcom/google/gdata/model/Metadata$VirtualValue;)Lcom/google/gdata/model/AttributeCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setVirtualValue(Lcom/google/gdata/model/Metadata$VirtualValue;)Lcom/google/gdata/model/MetadataCreatorImpl;
    .locals 1
    .param p1, "x0"    # Lcom/google/gdata/model/Metadata$VirtualValue;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/AttributeCreatorImpl;->setVirtualValue(Lcom/google/gdata/model/Metadata$VirtualValue;)Lcom/google/gdata/model/AttributeCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setVisible(Z)Lcom/google/gdata/model/AttributeCreator;
    .locals 1
    .param p1, "x0"    # Z

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/AttributeCreatorImpl;->setVisible(Z)Lcom/google/gdata/model/AttributeCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public setVisible(Z)Lcom/google/gdata/model/AttributeCreatorImpl;
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/google/gdata/model/MetadataCreatorImpl;->setVisible(Z)Lcom/google/gdata/model/MetadataCreatorImpl;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/AttributeCreatorImpl;

    return-object v0
.end method

.method public bridge synthetic setVisible(Z)Lcom/google/gdata/model/MetadataCreator;
    .locals 1
    .param p1, "x0"    # Z

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/AttributeCreatorImpl;->setVisible(Z)Lcom/google/gdata/model/AttributeCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setVisible(Z)Lcom/google/gdata/model/MetadataCreatorImpl;
    .locals 1
    .param p1, "x0"    # Z

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/AttributeCreatorImpl;->setVisible(Z)Lcom/google/gdata/model/AttributeCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method toTransform()Lcom/google/gdata/model/AttributeTransform;
    .locals 1

    .prologue
    .line 42
    invoke-static {p0}, Lcom/google/gdata/model/AttributeTransform;->create(Lcom/google/gdata/model/AttributeCreatorImpl;)Lcom/google/gdata/model/AttributeTransform;

    move-result-object v0

    return-object v0
.end method
