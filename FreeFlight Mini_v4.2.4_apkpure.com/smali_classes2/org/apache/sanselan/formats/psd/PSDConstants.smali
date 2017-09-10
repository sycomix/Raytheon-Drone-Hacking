.class public Lorg/apache/sanselan/formats/psd/PSDConstants;
.super Ljava/lang/Object;
.source "PSDConstants.java"


# static fields
.field static class$org$apache$sanselan$formats$psd$PSDConstants:Ljava/lang/Class;

.field public static final fImageResourceTypes:[Lorg/apache/sanselan/formats/psd/ImageResourceType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 37
    const/4 v1, 0x0

    .line 41
    .local v1, "temp":[Lorg/apache/sanselan/formats/psd/ImageResourceType;
    const/16 v3, 0x37

    :try_start_0
    new-array v2, v3, [Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x3e8

    const/16 v6, 0x3e8

    const-string v7, " Contains five 2 byte values: number of channels, rows, columns, depth, and mode."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x3e9

    const/16 v6, 0x3e9

    const-string v7, "Optional. Macintosh print manager print info record."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x3eb

    const/16 v6, 0x3eb

    const-string v7, " Contains the indexed color table."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x3ed

    const/16 v6, 0x3ed

    const-string v7, "ResolutionInfo structure. See Appendix A in Photoshop SDK Guide.pdf."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x4

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x3ee

    const/16 v6, 0x3ee

    const-string v7, "Names of the alpha channels as a series of Pascal strings."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x3ef

    const/16 v6, 0x3ef

    const-string v7, "DisplayInfo structure. See Appendix A in Photoshop SDK Guide.pdf ."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x3f0

    const/16 v6, 0x3f0

    const-string v7, "Optional. The caption as a Pascal string."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x3f1

    const/16 v6, 0x3f1

    const-string v7, "Border information. Contains a fixed-number for the border width, and 2 bytes for border units (1=inches, 2=cm, 3=points, 4=picas, 5=columns)."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x3f2

    const/16 v6, 0x3f2

    const-string v7, "Background color. See the Colors additional file information."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x3f3

    const/16 v6, 0x3f3

    const-string v7, "Print flags. A series of one byte boolean values (see Page Setup dialog): labels, crop marks, color bars, registration marks, negative, flip, interpolate, caption."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0xa

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x3f4

    const/16 v6, 0x3f4

    const-string v7, "Grayscale and multichannel halftoning information."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0xb

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x3f5

    const/16 v6, 0x3f5

    const-string v7, "Color halftoning information."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0xc

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x3f6

    const/16 v6, 0x3f6

    const-string v7, "Duotone halftoning information."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0xd

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x3f7

    const/16 v6, 0x3f7

    const-string v7, "Grayscale and multichannel transfer function."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0xe

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x3f8

    const/16 v6, 0x3f8

    const-string v7, "Color transfer functions."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0xf

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x3f9

    const/16 v6, 0x3f9

    const-string v7, "Duotone transfer functions."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x10

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x3fa

    const/16 v6, 0x3fa

    const-string v7, "Duotone image information."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x11

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x3fb

    const/16 v6, 0x3fb

    const-string v7, "Two bytes for the effective black and white values for the dot range."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x12

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x3fc

    const/16 v6, 0x3fc

    const-string v7, "Obsolete."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x13

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x3fd

    const/16 v6, 0x3fd

    const-string v7, "EPS options."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x14

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x3fe

    const/16 v6, 0x3fe

    const-string v7, "Quick Mask information. 2 bytes containing Quick Mask channel ID, 1 byte boolean indicating whether the mask was initially empty."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x15

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x3ff

    const/16 v6, 0x3ff

    const-string v7, "Obsolete."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x16

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x400

    const/16 v6, 0x400

    const-string v7, "Layer state information. 2 bytes containing the index of target layer. 0=bottom layer."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x17

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x401

    const/16 v6, 0x401

    const-string v7, "Working path (not saved). See path resource format later in this chapter."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x18

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x402

    const/16 v6, 0x402

    const-string v7, "Layers group information. 2 bytes per layer containing a group ID for the dragging groups. Layers in a group have the same group ID."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x19

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x403

    const/16 v6, 0x403

    const-string v7, "Obsolete."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x404

    const/16 v6, 0x404

    const-string v7, "IPTC-NAA record. This contains the File Info... information. See the IIMV4.pdf document."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x405

    const/16 v6, 0x405

    const-string v7, "Image mode for raw format files."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x406

    const/16 v6, 0x406

    const-string v7, "JPEG quality. Private."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x408

    const/16 v6, 0x408

    const-string v7, "Grid and guides information. See grid and guides resource format later in this chapter."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x409

    const/16 v6, 0x409

    const-string v7, "Thumbnail resource. See thumbnail resource format later in this chapter."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x40a

    const/16 v6, 0x40a

    const-string v7, "Copyright flag. Boolean indicating whether image is copyrighted. Can be set via Property suite or by user in File Info..."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x20

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x40b

    const/16 v6, 0x40b

    const-string v7, "URL. Handle of a text string with uniform resource locator. Can be set via Property suite or by user in File Info..."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x21

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x40c

    const/16 v6, 0x40c

    const-string v7, "Thumbnail resource. See thumbnail resource format later in this chapter."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x22

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x40d

    const/16 v6, 0x40d

    const-string v7, "Global Angle. 4 bytes that contain an integer between 0..359 which is the global lighting angle for effects layer. If not present assumes 30."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x23

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x40e

    const/16 v6, 0x40e

    const-string v7, "Color samplers resource. See color samplers resource format later in this chapter."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x24

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x40f

    const/16 v6, 0x40f

    const-string v7, "ICC Profile. The raw bytes of an ICC format profile, see the ICC34.pdf and ICC34.h files from the Internation Color Consortium located in the documentation section."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x25

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x410

    const/16 v6, 0x410

    const-string v7, "One byte for Watermark."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x26

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x411

    const/16 v6, 0x411

    const-string v7, "ICC Untagged. 1 byte that disables any assumed profile handling when opening the file. 1 = intentionally untagged."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x27

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x412

    const/16 v6, 0x412

    const-string v7, "Effects visible. 1 byte global flag to show/hide all the effects layer. Only present when they are hidden."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x28

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x413

    const/16 v6, 0x413

    const-string v7, "Spot Halftone. 4 bytes for version, 4 bytes for length, and the variable length data."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x29

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x414

    const/16 v6, 0x414

    const-string v7, "Document specific IDs, layer IDs will be generated starting at this base value or a greater value if we find existing IDs to already exceed it. It\u2019s purpose is to avoid the case where we add layers, flatten, save, open, and then add more layers that end up with the same IDs as the first set. 4 bytes."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x415

    const/16 v6, 0x415

    const-string v7, "Unicode Alpha Names. 4 bytes for length and the string as a unicode string."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x416

    const/16 v6, 0x416

    const-string v7, "Indexed Color Table Count. 2 bytes for the number of colors in table that are actually defined"

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x417

    const/16 v6, 0x417

    const-string v7, "Tansparent Index. 2 bytes for the index of transparent color, if any."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x419

    const/16 v6, 0x419

    const-string v7, "Global Altitude. 4 byte entry for altitude"

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x41a

    const/16 v6, 0x41a

    const-string v7, "Slices. See description later in this chapter"

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x41b

    const/16 v6, 0x41b

    const-string v7, "Workflow URL. Unicode string, 4 bytes of length followed by unicode string."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x30

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x41c

    const/16 v6, 0x41c

    const-string v7, "Jump To XPEP. 2 bytes major version, 2 bytes minor version, 4 bytes count. Following is repeated for count: 4 bytes block size, 4 bytes key, if key = \'jtDd\' then next is a Boolean for the dirty flag otherwise it\u2019s a 4 byte entry for the mod date."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x31

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x41d

    const/16 v6, 0x41d

    const-string v7, "Alpha Identifiers. 4 bytes of length, followed by 4 bytes each for every alpha identifier."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x32

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x41e

    const/16 v6, 0x41e

    const-string v7, "URL List. 4 byte count of URLs, followed by 4 byte long, 4 byte ID, and unicode string for each count."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x33

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x421

    const/16 v6, 0x421

    const-string v7, "Version Info. 4 byte version, 1 byte HasRealMergedData, unicode string of writer name, unicode string of reader name, 4 bytes of file version."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x34

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, -0x3e6

    const/16 v6, -0x3e6

    const-string v7, "Path Information (saved paths). See path resource format later in this chapter."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x35

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0xbb7

    const/16 v6, 0xbb7

    const-string v7, "Name of clipping path. See path resource format later in this chapter."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x36

    new-instance v4, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v5, 0x2710

    const/16 v6, 0x2710

    const-string v7, "Print flags information. 2 bytes version (=1), 1 byte center crop marks, 1 byte (=0), 4 bytes bleed width value, 2 bytes bleed width scale."

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "temp":[Lorg/apache/sanselan/formats/psd/ImageResourceType;
    .local v2, "temp":[Lorg/apache/sanselan/formats/psd/ImageResourceType;
    move-object v1, v2

    .line 202
    .end local v2    # "temp":[Lorg/apache/sanselan/formats/psd/ImageResourceType;
    .restart local v1    # "temp":[Lorg/apache/sanselan/formats/psd/ImageResourceType;
    :goto_0
    sput-object v1, Lorg/apache/sanselan/formats/psd/PSDConstants;->fImageResourceTypes:[Lorg/apache/sanselan/formats/psd/ImageResourceType;

    .line 203
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/apache/sanselan/formats/psd/PSDConstants;->class$org$apache$sanselan$formats$psd$PSDConstants:Ljava/lang/Class;

    if-nez v3, :cond_0

    const-string v3, "org.apache.sanselan.formats.psd.PSDConstants"

    invoke-static {v3}, Lorg/apache/sanselan/formats/psd/PSDConstants;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/sanselan/formats/psd/PSDConstants;->class$org$apache$sanselan$formats$psd$PSDConstants:Ljava/lang/Class;

    :goto_1
    invoke-static {v3, v0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Class;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    sget-object v3, Lorg/apache/sanselan/formats/psd/PSDConstants;->class$org$apache$sanselan$formats$psd$PSDConstants:Ljava/lang/Class;

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 200
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public getDescription(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 27
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lorg/apache/sanselan/formats/psd/PSDConstants;->fImageResourceTypes:[Lorg/apache/sanselan/formats/psd/ImageResourceType;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 29
    sget-object v1, Lorg/apache/sanselan/formats/psd/PSDConstants;->fImageResourceTypes:[Lorg/apache/sanselan/formats/psd/ImageResourceType;

    aget-object v1, v1, v0

    iget v1, v1, Lorg/apache/sanselan/formats/psd/ImageResourceType;->ID:I

    if-ne v1, p1, :cond_0

    .line 30
    sget-object v1, Lorg/apache/sanselan/formats/psd/PSDConstants;->fImageResourceTypes:[Lorg/apache/sanselan/formats/psd/ImageResourceType;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/apache/sanselan/formats/psd/ImageResourceType;->Description:Ljava/lang/String;

    .line 32
    :goto_1
    return-object v1

    .line 27
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_1
    const-string v1, "Unknown"

    goto :goto_1
.end method
