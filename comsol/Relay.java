/*
 * Relay.java
 */

import com.comsol.model.*;
import com.comsol.model.util.*;

/** Model exported on Jun 2 2020, 04:04 by COMSOL 5.5.0.359. */
public class Relay {

  public static Model run() {
    Model model = ModelUtil.create("Model");

    model.modelPath("/Users/akashlevy/OneDrive - Levylab/Documents/Research/NEM-Relay-CAD/comsol");

    model.setGroupByType(true);

    model.label("Relay.mph");

    model.comments("NEM Relay Analysis\n\n");

    model.param().set("t_poly", "0.2[um]", "Thickness of poly-SiGe layer + dielectric");
    model.param().set("t_cont", "0.03[um]", "Thickness of contacts");
    model.param().set("t_sp", "0.05[um]", "Thickness of dielectric");
    model.param().set("t_chan", "0.01[um]", "Thickness of channel");
    model.param().set("t_sub", "1[um]", "Thickness of substrate");
    model.param().set("g_act", "0.1[um]", "Actuation gap");
    model.param().set("L_plate", "3[um]", "Side length of plate");
    model.param().group().create("par2");
    model.param("par2").set("en", "5e17[Pa/m]", "Spring stiffness");
    model.param("par2").set("tn", "1e7[Pa]", "Pressure in contact");
    model.param("par2").set("gaptol", "10[nm]", "How much gap to leave");
    model.param("par2").set("rho_w", "55e-9[ohm*m]", "Contact material resistivity (W)");
    model.param("par2").set("lambda_w", "33[nm]", "Contact material mean free path (W)");
    model.param("par2").set("eta_w", "0.3", "Contact deformation coefficient");
    model.param("par2").set("H_w", "1.1[GPa]", "Contact material hardness (W)");
    model.param().group().create("par3");
    model.param("par3").set("F_spr", "1e-8[N]", "Force to apply for spring constant");
    model.param("par3").set("V_gate", "20[V]", "Voltage to apply to gate");
    model.param("par3").set("mu", "0.957[Pa*s]", "Shear viscosity");
    model.param("par3").set("muB", "0[Pa*s]", "Bulk viscosity");
    model.param().label("Relay Dimensions");
    model.param("par2").label("Contact Parameters");
    model.param("par3").label("Study Parameters");

    model.component().create("relay", true);

    model.component("relay").geom().create("geom1", 3);

    model.component("relay").label("Relay Component");

    model.component("relay").setGroupByType(true);

    model.result().evaluationGroup().create("std2EvgFrq", "EvaluationGroup");
    model.result().evaluationGroup().create("eg1", "EvaluationGroup");
    model.result().evaluationGroup().create("eg3", "EvaluationGroup");
    model.result().evaluationGroup().create("eg4", "EvaluationGroup");
    model.result().evaluationGroup("std2EvgFrq").create("gev1", "EvalGlobal");
    model.result().evaluationGroup("eg1").create("max1", "MaxSurface");
//     model.result().evaluationGroup("eg3").create("gmev3", "EvalGlobalMatrix");
    model.result().evaluationGroup("eg4").create("int1", "IntSurface");
    model.result().evaluationGroup("eg4").create("int2", "IntSurface");
    model.result().evaluationGroup("eg4").create("int3", "IntSurface");
    model.result().evaluationGroup("eg4").create("int4", "IntSurface");
    model.result().evaluationGroup("eg4").create("int5", "IntSurface");
    model.result().evaluationGroup("eg4").create("int6", "IntSurface");
    model.result().evaluationGroup("eg4").create("int7", "IntSurface");
    model.result().evaluationGroup("eg4").create("int8", "IntSurface");
    model.result().evaluationGroup("eg4").create("int9", "IntSurface");
    model.result().evaluationGroup("eg4").create("int10", "IntSurface");
    model.result().evaluationGroup("eg4").create("int11", "IntSurface");
    model.result().evaluationGroup("eg4").create("int12", "IntSurface");
    model.result().evaluationGroup("eg4").create("int13", "IntSurface");
    model.result().evaluationGroup("eg4").create("int14", "IntSurface");
    model.result().evaluationGroup("eg4").create("int15", "IntSurface");
    model.result().evaluationGroup("eg4").create("int16", "IntSurface");
    model.result().evaluationGroup("eg4").create("int17", "IntSurface");

    model.component("relay").func().create("tri1", "Triangle");
    model.component("relay").func().create("an1", "Analytic");
    model.component("relay").func().create("rect1", "Rectangle");
    model.component("relay").func("tri1").label("Sweep Triangle");
    model.component("relay").func("tri1").set("lower", 0);
    model.component("relay").func("tri1").set("upper", "4e-5");
    model.component("relay").func("tri1").set("smooth", "1e-6");
    model.component("relay").func("an1").label("Penalty Contact Force");
    model.component("relay").func("an1").set("expr", "(x<=0)*(tn - en*x) + (x >= 0)*tn*exp(-x*en/tn)");
    model.component("relay").func("an1").set("plotargs", new String[][]{{"x", "-1e-10", "1e-8"}});
    model.component("relay").func("rect1").set("lower", "1.5e-9");
    model.component("relay").func("rect1").set("upper", "5e-7");
    model.component("relay").func("rect1").set("smooth", "1e-9");

    model.component("relay").mesh().create("mesh1");
    model.component("relay").mesh().create("mesh3");

    model.component("relay").geom("geom1").label("Relay Geometry");
    model.component("relay").geom("geom1").lengthUnit("\u00b5m");
    model.component("relay").geom("geom1").selection().create("csel1", "CumulativeSelection");
    model.component("relay").geom("geom1").selection("csel1").label("Substrate Dielectric");
    model.component("relay").geom("geom1").create("imp1", "Import");
    model.component("relay").geom("geom1").feature("imp1").label("Import from GDS");
    model.component("relay").geom("geom1").feature("imp1").set("type", "ecad");
    model.component("relay").geom("geom1").feature("imp1").set("filename", "../layouts/relay.gds");
    model.component("relay").geom("geom1").feature("imp1").set("manualelevation", true);
    model.component("relay").geom("geom1").feature("imp1").set("shownamesfromfile", true);
    model.component("relay").geom("geom1").feature("imp1")
         .set("layername", new String[]{"Anchor", "Channel", "Contact", "Body", "Holes", "Substrate Metal", "Substrate Gap", "Substrate Landing Pads"});
    model.component("relay").geom("geom1").feature("imp1")
         .set("height", new String[]{"g_act + t_sp", "t_chan", "t_cont", "t_poly", "t_poly", "t_sub", "t_sub", "t_sub"});
    model.component("relay").geom("geom1").feature("imp1")
         .set("elevation", new String[]{"0", "g_act-t_chan", "g_act-t_cont", "g_act", "g_act", "-t_sub", "-t_sub", "-t_sub"});
    model.component("relay").geom("geom1").feature("imp1")
         .set("importlayer", new String[]{"on", "on", "on", "on", "on", "on", "on", "on"});
    model.component("relay").geom("geom1").feature("imp1").set("intbnd", true);
    model.component("relay").geom("geom1").feature("imp1").set("repairgeom", false);
    model.component("relay").geom("geom1").feature("imp1").importData();
    model.component("relay").geom("geom1").create("dif1", "Difference");
    model.component("relay").geom("geom1").feature("dif1").label("Remove Body Holes");
    model.component("relay").geom("geom1").feature("dif1").selection("input").named("imp1_Body");
    model.component("relay").geom("geom1").feature("dif1").selection("input2").named("imp1_Holes");
    model.component("relay").geom("geom1").create("blk2", "Block");
    model.component("relay").geom("geom1").feature("blk2").label("Substrate");
    model.component("relay").geom("geom1").feature("blk2").set("selresult", true);
    model.component("relay").geom("geom1").feature("blk2").set("pos", new String[]{"0", "0", "-t_sub/2"});
    model.component("relay").geom("geom1").feature("blk2").set("base", "center");
    model.component("relay").geom("geom1").feature("blk2")
         .set("size", new String[]{"L_plate*2.5", "L_plate*2.5", "t_sub"});
    model.component("relay").geom("geom1").create("dif2", "Difference");
    model.component("relay").geom("geom1").feature("dif2").label("Remove Substrate Metal Gaps");
    model.component("relay").geom("geom1").feature("dif2").selection("input").named("imp1_Substrate_Metal");
    model.component("relay").geom("geom1").feature("dif2").selection("input2").named("imp1_Substrate_Gap");
    model.component("relay").geom("geom1").create("dif3", "Difference");
    model.component("relay").geom("geom1").feature("dif3").label("Remove Metal from Substrate Dielectric");
    model.component("relay").geom("geom1").feature("dif3").set("contributeto", "csel1");
    model.component("relay").geom("geom1").feature("dif3").set("keep", true);
    model.component("relay").geom("geom1").feature("dif3").selection("input").named("blk2");
    model.component("relay").geom("geom1").feature("dif3").selection("input2").set("dif2");
    model.component("relay").geom("geom1").create("del1", "Delete");
    model.component("relay").geom("geom1").feature("del1").label("Delete Old Substrate");
    model.component("relay").geom("geom1").feature("del1").selection("input").init();
    model.component("relay").geom("geom1").feature("del1").selection("input").set("blk2");
    model.component("relay").geom("geom1").create("wp1", "WorkPlane");
    model.component("relay").geom("geom1").feature("wp1").label("Split Body Plane");
    model.component("relay").geom("geom1").feature("wp1").set("quickz", "g_act + t_sp");
    model.component("relay").geom("geom1").feature("wp1").set("unite", true);
    model.component("relay").geom("geom1").create("pard1", "PartitionDomains");
    model.component("relay").geom("geom1").feature("pard1").label("Partition Body Domain");
    model.component("relay").geom("geom1").feature("pard1").set("selresult", true);
    model.component("relay").geom("geom1").feature("pard1").set("selresultshow", "all");
    model.component("relay").geom("geom1").feature("pard1").selection("domain").named("imp1_Body");
    model.component("relay").geom("geom1").create("boxsel3", "BoxSelection");
    model.component("relay").geom("geom1").feature("boxsel3").label("Poly");
    model.component("relay").geom("geom1").feature("boxsel3").set("zmin", "g_act + t_poly");
    model.component("relay").geom("geom1").feature("boxsel3").set("zmax", "g_act + t_poly");
    model.component("relay").geom("geom1").create("blk1", "Block");
    model.component("relay").geom("geom1").feature("blk1").label("Poly Cut Block");
    model.component("relay").geom("geom1").feature("blk1").set("pos", new String[]{"-L_plate/2", "-L_plate/2", "0"});
    model.component("relay").geom("geom1").feature("blk1")
         .set("size", new String[]{"L_plate", "L_plate", "g_act+t_poly"});
    model.component("relay").geom("geom1").create("pard2", "PartitionDomains");
    model.component("relay").geom("geom1").feature("pard2").label("Partition Poly");
    model.component("relay").geom("geom1").feature("pard2").set("partitionwith", "objects");
    model.component("relay").geom("geom1").feature("pard2").set("keepobject", false);
    model.component("relay").geom("geom1").feature("pard2").selection("domain").named("boxsel3");
    model.component("relay").geom("geom1").feature("pard2").selection("object").set("blk1");
    model.component("relay").geom("geom1").create("sph1", "Sphere");
    model.component("relay").geom("geom1").feature("sph1").label("Sphere Enclosure");
    model.component("relay").geom("geom1").feature("sph1").set("selresult", true);
    model.component("relay").geom("geom1").feature("sph1").set("r", "2*L_plate");
    model.component("relay").geom("geom1").run();

    model.component("relay").selection().create("dif5", "Difference");
    model.component("relay").selection().create("adj34", "Adjacent");
    model.component("relay").selection().create("uni3", "Union");
    model.component("relay").selection().create("adj8", "Adjacent");
    model.component("relay").selection().create("uni5", "Union");
    model.component("relay").selection("uni5").set("entitydim", 2);
    model.component("relay").selection().create("box7", "Box");
    model.component("relay").selection("box7").set("entitydim", 2);
    model.component("relay").selection().create("sel25", "Explicit");
    model.component("relay").selection("sel25").geom("geom1", 3, 2, new String[]{"exterior"});
    model.component("relay").selection("sel25").set(49);
    model.component("relay").selection().create("sel26", "Explicit");
    model.component("relay").selection("sel26").geom("geom1", 3, 2, new String[]{"exterior"});
    model.component("relay").selection("sel26").set(36);
    model.component("relay").selection().create("sel27", "Explicit");
    model.component("relay").selection("sel27").geom("geom1", 3, 2, new String[]{"exterior"});
    model.component("relay").selection("sel27").set(31);
    model.component("relay").selection().create("sel28", "Explicit");
    model.component("relay").selection("sel28").geom("geom1", 3, 2, new String[]{"exterior"});
    model.component("relay").selection("sel28").set(26);
    model.component("relay").selection().create("sel29", "Explicit");
    model.component("relay").selection("sel29").geom("geom1", 3, 2, new String[]{"exterior"});
    model.component("relay").selection("sel29").set(17);
    model.component("relay").selection().create("sel30", "Explicit");
    model.component("relay").selection("sel30").geom("geom1", 3, 2, new String[]{"exterior"});
    model.component("relay").selection("sel30").set(22);
    model.component("relay").selection().create("sel31", "Explicit");
    model.component("relay").selection("sel31").geom("geom1", 3, 2, new String[]{"exterior"});
    model.component("relay").selection("sel31").set(38);
    model.component("relay").selection().create("sel32", "Explicit");
    model.component("relay").selection("sel32").geom("geom1", 3, 2, new String[]{"exterior"});
    model.component("relay").selection("sel32").set(46);
    model.component("relay").selection().create("sel33", "Explicit");
    model.component("relay").selection("sel33").geom("geom1", 3, 2, new String[]{"exterior"});
    model.component("relay").selection("sel33").set(54);
    model.component("relay").selection().create("sel34", "Explicit");
    model.component("relay").selection("sel34").geom("geom1", 3, 2, new String[]{"exterior"});
    model.component("relay").selection("sel34").set(67);
    model.component("relay").selection().create("sel35", "Explicit");
    model.component("relay").selection("sel35").geom("geom1", 3, 2, new String[]{"exterior"});
    model.component("relay").selection("sel35").set(71);
    model.component("relay").selection().create("sel36", "Explicit");
    model.component("relay").selection("sel36").geom("geom1", 3, 2, new String[]{"exterior"});
    model.component("relay").selection("sel36").set(76);
    model.component("relay").selection().create("sel37", "Explicit");
    model.component("relay").selection("sel37").geom("geom1", 3, 2, new String[]{"exterior"});
    model.component("relay").selection("sel37").set(85);
    model.component("relay").selection().create("sel38", "Explicit");
    model.component("relay").selection("sel38").geom("geom1", 3, 2, new String[]{"exterior"});
    model.component("relay").selection("sel38").set(80);
    model.component("relay").selection().create("sel39", "Explicit");
    model.component("relay").selection("sel39").geom("geom1", 3, 2, new String[]{"exterior"});
    model.component("relay").selection("sel39").set(64);
    model.component("relay").selection().create("sel40", "Explicit");
    model.component("relay").selection("sel40").geom("geom1", 3, 2, new String[]{"exterior"});
    model.component("relay").selection("sel40").set(56);
    model.component("relay").selection().create("box8", "Box");
    model.component("relay").selection("box8").set("entitydim", 2);
    model.component("relay").selection().create("int1", "Intersection");
    model.component("relay").selection("int1").set("entitydim", 2);
    model.component("relay").selection().create("int2", "Intersection");
    model.component("relay").selection("int2").set("entitydim", 2);
    model.component("relay").selection().create("int3", "Intersection");
    model.component("relay").selection("int3").set("entitydim", 2);
    model.component("relay").selection().create("int4", "Intersection");
    model.component("relay").selection("int4").set("entitydim", 2);
    model.component("relay").selection().create("int5", "Intersection");
    model.component("relay").selection("int5").set("entitydim", 2);
    model.component("relay").selection().create("int6", "Intersection");
    model.component("relay").selection("int6").set("entitydim", 2);
    model.component("relay").selection().create("int7", "Intersection");
    model.component("relay").selection("int7").set("entitydim", 2);
    model.component("relay").selection().create("int8", "Intersection");
    model.component("relay").selection("int8").set("entitydim", 2);
    model.component("relay").selection().create("int9", "Intersection");
    model.component("relay").selection("int9").set("entitydim", 2);
    model.component("relay").selection().create("int10", "Intersection");
    model.component("relay").selection("int10").set("entitydim", 2);
    model.component("relay").selection().create("int11", "Intersection");
    model.component("relay").selection("int11").set("entitydim", 2);
    model.component("relay").selection().create("int12", "Intersection");
    model.component("relay").selection("int12").set("entitydim", 2);
    model.component("relay").selection().create("int13", "Intersection");
    model.component("relay").selection("int13").set("entitydim", 2);
    model.component("relay").selection().create("int14", "Intersection");
    model.component("relay").selection("int14").set("entitydim", 2);
    model.component("relay").selection().create("int15", "Intersection");
    model.component("relay").selection("int15").set("entitydim", 2);
    model.component("relay").selection().create("int16", "Intersection");
    model.component("relay").selection("int16").set("entitydim", 2);
    model.component("relay").selection().create("uni4", "Union");
    model.component("relay").selection().create("sel1", "Explicit");
    model.component("relay").selection("sel1").set(36, 40, 49);
    model.component("relay").selection().create("sel2", "Explicit");
    model.component("relay").selection("sel2").set(26, 28, 31);
    model.component("relay").selection().create("sel3", "Explicit");
    model.component("relay").selection("sel3").set(17, 19, 22);
    model.component("relay").selection().create("sel4", "Explicit");
    model.component("relay").selection("sel4").set(38, 42, 46);
    model.component("relay").selection().create("sel5", "Explicit");
    model.component("relay").selection("sel5").set(54, 58, 67);
    model.component("relay").selection().create("sel6", "Explicit");
    model.component("relay").selection("sel6").set(71, 73, 76);
    model.component("relay").selection().create("sel7", "Explicit");
    model.component("relay").selection("sel7").set(80, 82, 85);
    model.component("relay").selection().create("sel8", "Explicit");
    model.component("relay").selection("sel8").set(56, 60, 64);
    model.component("relay").selection().create("adj4", "Adjacent");
    model.component("relay").selection().create("adj9", "Adjacent");
    model.component("relay").selection().create("adj10", "Adjacent");
    model.component("relay").selection().create("adj11", "Adjacent");
    model.component("relay").selection().create("adj12", "Adjacent");
    model.component("relay").selection().create("adj13", "Adjacent");
    model.component("relay").selection().create("adj14", "Adjacent");
    model.component("relay").selection().create("adj15", "Adjacent");
    model.component("relay").selection().create("adj16", "Adjacent");
    model.component("relay").selection().create("box3", "Box");
    model.component("relay").selection().create("dif1", "Difference");
    model.component("relay").selection().create("box5", "Box");
    model.component("relay").selection().create("adj6", "Adjacent");
    model.component("relay").selection().create("uni1", "Union");
    model.component("relay").selection().create("adj35", "Adjacent");
    model.component("relay").selection().create("uni2", "Union");
    model.component("relay").selection().create("adj36", "Adjacent");
    model.component("relay").selection().create("dif2", "Difference");
    model.component("relay").selection().create("adj7", "Adjacent");
    model.component("relay").selection().create("dif3", "Difference");
    model.component("relay").selection().create("adj2", "Adjacent");
    model.component("relay").selection().create("sel9", "Explicit");
    model.component("relay").selection("sel9").set(48);
    model.component("relay").selection().create("sel10", "Explicit");
    model.component("relay").selection("sel10").set(35);
    model.component("relay").selection().create("sel11", "Explicit");
    model.component("relay").selection("sel11").set(30);
    model.component("relay").selection().create("sel12", "Explicit");
    model.component("relay").selection("sel12").set(25);
    model.component("relay").selection().create("sel13", "Explicit");
    model.component("relay").selection("sel13").set(16);
    model.component("relay").selection().create("sel14", "Explicit");
    model.component("relay").selection("sel14").set(21);
    model.component("relay").selection().create("sel15", "Explicit");
    model.component("relay").selection("sel15").set(37);
    model.component("relay").selection().create("sel16", "Explicit");
    model.component("relay").selection("sel16").set(45);
    model.component("relay").selection().create("sel17", "Explicit");
    model.component("relay").selection("sel17").set(53);
    model.component("relay").selection().create("sel18", "Explicit");
    model.component("relay").selection("sel18").set(66);
    model.component("relay").selection().create("sel19", "Explicit");
    model.component("relay").selection("sel19").set(70);
    model.component("relay").selection().create("sel20", "Explicit");
    model.component("relay").selection("sel20").set(75);
    model.component("relay").selection().create("sel21", "Explicit");
    model.component("relay").selection("sel21").set(84);
    model.component("relay").selection().create("sel22", "Explicit");
    model.component("relay").selection("sel22").set(79);
    model.component("relay").selection().create("sel23", "Explicit");
    model.component("relay").selection("sel23").set(63);
    model.component("relay").selection().create("sel24", "Explicit");
    model.component("relay").selection("sel24").set(55);
    model.component("relay").selection().create("adj5", "Adjacent");
    model.component("relay").selection().create("adj18", "Adjacent");
    model.component("relay").selection().create("adj19", "Adjacent");
    model.component("relay").selection().create("adj20", "Adjacent");
    model.component("relay").selection().create("adj21", "Adjacent");
    model.component("relay").selection().create("adj22", "Adjacent");
    model.component("relay").selection().create("adj23", "Adjacent");
    model.component("relay").selection().create("adj24", "Adjacent");
    model.component("relay").selection().create("adj25", "Adjacent");
    model.component("relay").selection().create("adj26", "Adjacent");
    model.component("relay").selection().create("adj27", "Adjacent");
    model.component("relay").selection().create("adj28", "Adjacent");
    model.component("relay").selection().create("adj29", "Adjacent");
    model.component("relay").selection().create("adj30", "Adjacent");
    model.component("relay").selection().create("adj31", "Adjacent");
    model.component("relay").selection().create("adj32", "Adjacent");
    model.component("relay").selection().create("adj33", "Adjacent");
    model.component("relay").selection().create("box2", "Box");
    model.component("relay").selection("box2").set("entitydim", 2);
    model.component("relay").selection("dif5").label("Anchor Via");
    model.component("relay").selection("dif5").set("add", new String[]{"geom1_imp1_Substrate_Metal_dom"});
    model.component("relay").selection("dif5").set("subtract", new String[]{"box5"});
    model.component("relay").selection("adj34").label("Anchor Via Boundary");
    model.component("relay").selection("adj34").set("input", new String[]{"dif5"});
    model.component("relay").selection("uni3").label("Body");
    model.component("relay").selection("uni3").set("input", new String[]{"geom1_imp1_Anchor_dom", "geom1_boxsel3"});
    model.component("relay").selection("adj8").label("Body Boundary");
    model.component("relay").selection("adj8").set("input", new String[]{"uni3"});
    model.component("relay").selection("uni5").label("Gnd Boundary");
    model.component("relay").selection("uni5").set("input", new String[]{"adj8", "adj34"});
    model.component("relay").selection("box7").label("Body Bottom Boundary");
    model.component("relay").selection("box7").set("inputent", "selections");
    model.component("relay").selection("box7").set("input", new String[]{"geom1_imp1_Body_bnd"});
    model.component("relay").selection("box7").set("zmin", "g_act");
    model.component("relay").selection("box7").set("zmax", "g_act");
    model.component("relay").selection("box7").set("condition", "allvertices");
    model.component("relay").selection("sel25").label("Contact 1 Boundary");
    model.component("relay").selection("sel26").label("Contact 2 Boundary");
    model.component("relay").selection("sel27").label("Contact 3 Boundary");
    model.component("relay").selection("sel28").label("Contact 4 Boundary");
    model.component("relay").selection("sel29").label("Contact 5 Boundary");
    model.component("relay").selection("sel30").label("Contact 6 Boundary");
    model.component("relay").selection("sel31").label("Contact 7 Boundary");
    model.component("relay").selection("sel32").label("Contact 8 Boundary");
    model.component("relay").selection("sel33").label("Contact 9 Boundary");
    model.component("relay").selection("sel34").label("Contact 10 Boundary");
    model.component("relay").selection("sel35").label("Contact 11 Boundary");
    model.component("relay").selection("sel36").label("Contact 12 Boundary");
    model.component("relay").selection("sel37").label("Contact 13 Boundary");
    model.component("relay").selection("sel38").label("Contact 14 Boundary");
    model.component("relay").selection("sel39").label("Contact 15 Boundary");
    model.component("relay").selection("sel40").label("Contact 16 Boundary");
    model.component("relay").selection("box8").label("Contact Bottom Boundary");
    model.component("relay").selection("box8").set("xmin", "-L_plate/2");
    model.component("relay").selection("box8").set("xmax", "L_plate/2");
    model.component("relay").selection("box8").set("ymin", "-L_plate/2");
    model.component("relay").selection("box8").set("ymax", "L_plate/2");
    model.component("relay").selection("box8").set("zmin", "g_act - t_cont");
    model.component("relay").selection("box8").set("zmax", "g_act - t_cont");
    model.component("relay").selection("box8").set("condition", "allvertices");
    model.component("relay").selection("int1").label("Contact 1 Bottom Boundary");
    model.component("relay").selection("int1").set("input", new String[]{"sel25", "box8"});
    model.component("relay").selection("int2").label("Contact 2 Bottom Boundary");
    model.component("relay").selection("int2").set("input", new String[]{"box8", "sel26"});
    model.component("relay").selection("int3").label("Contact 3 Bottom Boundary");
    model.component("relay").selection("int3").set("input", new String[]{"box8", "sel27"});
    model.component("relay").selection("int4").label("Contact 4 Bottom Boundary");
    model.component("relay").selection("int4").set("input", new String[]{"box8", "sel28"});
    model.component("relay").selection("int5").label("Contact 5 Bottom Boundary");
    model.component("relay").selection("int5").set("input", new String[]{"box8", "sel29"});
    model.component("relay").selection("int6").label("Contact 6 Bottom Boundary");
    model.component("relay").selection("int6").set("input", new String[]{"box8", "sel30"});
    model.component("relay").selection("int7").label("Contact 7 Bottom Boundary");
    model.component("relay").selection("int7").set("input", new String[]{"box8", "sel31"});
    model.component("relay").selection("int8").label("Contact 8 Bottom Boundary");
    model.component("relay").selection("int8").set("input", new String[]{"box8", "sel32"});
    model.component("relay").selection("int9").label("Contact 9 Bottom Boundary");
    model.component("relay").selection("int9").set("input", new String[]{"box8", "sel33"});
    model.component("relay").selection("int10").label("Contact 10 Bottom Boundary");
    model.component("relay").selection("int10").set("input", new String[]{"box8", "sel34"});
    model.component("relay").selection("int11").label("Contact 11 Bottom Boundary");
    model.component("relay").selection("int11").set("input", new String[]{"box8", "sel35"});
    model.component("relay").selection("int12").label("Contact 12 Bottom Boundary");
    model.component("relay").selection("int12").set("input", new String[]{"box8", "sel36"});
    model.component("relay").selection("int13").label("Contact 13 Bottom Boundary");
    model.component("relay").selection("int13").set("input", new String[]{"box8", "sel37"});
    model.component("relay").selection("int14").label("Contact 14 Bottom Boundary");
    model.component("relay").selection("int14").set("input", new String[]{"box8", "sel38"});
    model.component("relay").selection("int15").label("Contact 15 Bottom Boundary");
    model.component("relay").selection("int15").set("input", new String[]{"box8", "sel39"});
    model.component("relay").selection("int16").label("Contact 16 Bottom Boundary");
    model.component("relay").selection("int16").set("input", new String[]{"box8", "sel40"});
    model.component("relay").selection("uni4").label("Contact Channel");
    model.component("relay").selection("uni4")
         .set("input", new String[]{"geom1_imp1_Contact_dom", "geom1_imp1_Channel_dom"});
    model.component("relay").selection("sel1").label("Contact Channel 1");
    model.component("relay").selection("sel2").label("Contact Channel 2");
    model.component("relay").selection("sel3").label("Contact Channel 3");
    model.component("relay").selection("sel4").label("Contact Channel 4");
    model.component("relay").selection("sel5").label("Contact Channel 5");
    model.component("relay").selection("sel6").label("Contact Channel 6");
    model.component("relay").selection("sel7").label("Contact Channel 7");
    model.component("relay").selection("sel8").label("Contact Channel 8");
    model.component("relay").selection("adj4").label("Contact Channel Boundary");
    model.component("relay").selection("adj4")
         .set("input", new String[]{"geom1_imp1_Channel_dom", "geom1_imp1_Contact_dom"});
    model.component("relay").selection("adj9").label("Contact Channel 1 Boundary");
    model.component("relay").selection("adj9").set("input", new String[]{"sel1"});
    model.component("relay").selection("adj10").label("Contact Channel 2 Boundary");
    model.component("relay").selection("adj10").set("input", new String[]{"sel2"});
    model.component("relay").selection("adj11").label("Contact Channel 3 Boundary");
    model.component("relay").selection("adj11").set("input", new String[]{"sel3"});
    model.component("relay").selection("adj12").label("Contact Channel 4 Boundary");
    model.component("relay").selection("adj12").set("input", new String[]{"sel4"});
    model.component("relay").selection("adj13").label("Contact Channel 5 Boundary");
    model.component("relay").selection("adj13").set("input", new String[]{"sel5"});
    model.component("relay").selection("adj14").label("Contact Channel 6 Boundary");
    model.component("relay").selection("adj14").set("input", new String[]{"sel6"});
    model.component("relay").selection("adj15").label("Contact Channel 7 Boundary");
    model.component("relay").selection("adj15").set("input", new String[]{"sel7"});
    model.component("relay").selection("adj16").label("Contact Channel 8 Boundary");
    model.component("relay").selection("adj16").set("input", new String[]{"sel8"});
    model.component("relay").selection("box3").label("Dielectric Layer with Anchor Bits");

    return model;
  }

  public static Model run2(Model model) {
    model.component("relay").selection("box3").set("zmin", "g_act");
    model.component("relay").selection("box3").set("zmax", "g_act + t_sp");
    model.component("relay").selection("box3").set("condition", "allvertices");
    model.component("relay").selection("dif1").label("Dielectric");
    model.component("relay").selection("dif1").set("add", new String[]{"box3"});
    model.component("relay").selection("dif1").set("subtract", new String[]{"geom1_imp1_Anchor_dom"});
    model.component("relay").selection("box5").label("Gate");
    model.component("relay").selection("box5").set("inputent", "selections");
    model.component("relay").selection("box5").set("input", new String[]{"geom1_imp1_Substrate_Metal_dom"});
    model.component("relay").selection("box5").set("xmin", "-L_plate/2");
    model.component("relay").selection("box5").set("xmax", "L_plate/2");
    model.component("relay").selection("box5").set("ymin", "-L_plate/2");
    model.component("relay").selection("box5").set("ymax", "L_plate/2");
    model.component("relay").selection("box5").set("zmin", "-t_sub");
    model.component("relay").selection("box5").set("zmax", 0);
    model.component("relay").selection("box5").set("condition", "allvertices");
    model.component("relay").selection("adj6").label("Gate Boundary");
    model.component("relay").selection("adj6").set("input", new String[]{"box5"});
    model.component("relay").selection("uni1").label("Components Above Substrate");
    model.component("relay").selection("uni1")
         .set("input", new String[]{"geom1_imp1_Anchor_dom", "geom1_imp1_Channel_dom", "geom1_imp1_Contact_dom", "geom1_imp1_Body_dom", "geom1_imp1_Holes_dom"});
    model.component("relay").selection("adj35").label("Components Above Substrate Boundary");
    model.component("relay").selection("adj35").set("input", new String[]{"uni1"});
    model.component("relay").selection("uni2").label("Substrate Components");
    model.component("relay").selection("uni2")
         .set("input", new String[]{"geom1_imp1_Substrate_Metal_dom", "geom1_imp1_Substrate_Gap_dom", "geom1_imp1_Substrate_Landing_Pads_dom", "geom1_csel1_dom"});
    model.component("relay").selection("adj36").label("Substrate Components Boundary");
    model.component("relay").selection("adj36").set("input", new String[]{"uni2"});
    model.component("relay").selection("dif2").label("Solids");
    model.component("relay").selection("dif2").set("add", new String[]{"uni1", "uni2"});
    model.component("relay").selection("adj7").label("Solids Boundary");
    model.component("relay").selection("adj7").set("input", new String[]{"dif2"});
    model.component("relay").selection("dif3").label("Enclosure Only");
    model.component("relay").selection("dif3").set("add", new String[]{"geom1_sph1_dom"});
    model.component("relay").selection("dif3").set("subtract", new String[]{"dif2"});
    model.component("relay").selection("adj2").label("Enclosure Only Boundary");
    model.component("relay").selection("adj2").set("input", new String[]{"geom1_sph1_dom"});
    model.component("relay").selection("sel9").label("Landing Pad 1");
    model.component("relay").selection("sel10").label("Landing Pad 2");
    model.component("relay").selection("sel11").label("Landing Pad 3");
    model.component("relay").selection("sel12").label("Landing Pad 4");
    model.component("relay").selection("sel13").label("Landing Pad 5");
    model.component("relay").selection("sel14").label("Landing Pad 6");
    model.component("relay").selection("sel15").label("Landing Pad 7");
    model.component("relay").selection("sel16").label("Landing Pad 8");
    model.component("relay").selection("sel17").label("Landing Pad 9");
    model.component("relay").selection("sel18").label("Landing Pad 10");
    model.component("relay").selection("sel19").label("Landing Pad 11");
    model.component("relay").selection("sel20").label("Landing Pad 12");
    model.component("relay").selection("sel21").label("Landing Pad 13");
    model.component("relay").selection("sel22").label("Landing Pad 14");
    model.component("relay").selection("sel23").label("Landing Pad 15");
    model.component("relay").selection("sel24").label("Landing Pad 16");
    model.component("relay").selection("adj5").label("Landing Pads Boundary");
    model.component("relay").selection("adj5").set("input", new String[]{"geom1_imp1_Substrate_Landing_Pads_dom"});
    model.component("relay").selection("adj18").label("Landing Pad 1 Boundary");
    model.component("relay").selection("adj18").set("input", new String[]{"sel9"});
    model.component("relay").selection("adj19").label("Landing Pad 2 Boundary");
    model.component("relay").selection("adj19").set("input", new String[]{"sel10"});
    model.component("relay").selection("adj20").label("Landing Pad 3 Boundary");
    model.component("relay").selection("adj20").set("input", new String[]{"sel11"});
    model.component("relay").selection("adj21").label("Landing Pad 4 Boundary");
    model.component("relay").selection("adj21").set("input", new String[]{"sel12"});
    model.component("relay").selection("adj22").label("Landing Pad 5 Boundary");
    model.component("relay").selection("adj22").set("input", new String[]{"sel13"});
    model.component("relay").selection("adj23").label("Landing Pad 6 Boundary");
    model.component("relay").selection("adj23").set("input", new String[]{"sel14"});
    model.component("relay").selection("adj24").label("Landing Pad 7 Boundary");
    model.component("relay").selection("adj24").set("input", new String[]{"sel15"});
    model.component("relay").selection("adj25").label("Landing Pad 8 Boundary");
    model.component("relay").selection("adj25").set("input", new String[]{"sel16"});
    model.component("relay").selection("adj26").label("Landing Pad 9 Boundary");
    model.component("relay").selection("adj26").set("input", new String[]{"sel17"});
    model.component("relay").selection("adj27").label("Landing Pad 10 Boundary");
    model.component("relay").selection("adj27").set("input", new String[]{"sel18"});
    model.component("relay").selection("adj28").label("Landing Pad 11 Boundary");
    model.component("relay").selection("adj28").set("input", new String[]{"sel19"});
    model.component("relay").selection("adj29").label("Landing Pad 12 Boundary");
    model.component("relay").selection("adj29").set("input", new String[]{"sel20"});
    model.component("relay").selection("adj30").label("Landing Pad 13 Boundary");
    model.component("relay").selection("adj30").set("input", new String[]{"sel21"});
    model.component("relay").selection("adj31").label("Landing Pad 14 Boundary");
    model.component("relay").selection("adj31").set("input", new String[]{"sel22"});
    model.component("relay").selection("adj32").label("Landing Pad 15 Boundary");
    model.component("relay").selection("adj32").set("input", new String[]{"sel23"});
    model.component("relay").selection("adj33").label("Landing Pad 16 Boundary");
    model.component("relay").selection("adj33").set("input", new String[]{"sel24"});
    model.component("relay").selection("box2").label("Plate Force Area");
    model.component("relay").selection("box2").set("xmin", "-L_plate/2");
    model.component("relay").selection("box2").set("xmax", "L_plate/2");
    model.component("relay").selection("box2").set("ymin", "-L_plate/2");
    model.component("relay").selection("box2").set("ymax", "L_plate/2");
    model.component("relay").selection("box2").set("zmin", "g_act + t_sp");
    model.component("relay").selection("box2").set("zmax", "g_act + t_sp");
    model.component("relay").selection("box2").set("condition", "allvertices");

    model.component("relay").variable().create("var1");
    model.component("relay").variable("var1")
         .set("body_gap", "(g_act - gaptol) + w", "Gap between body and substrate");
    model.component("relay").variable("var1")
         .set("cont_gap", "(g_act - t_cont - gaptol) + w", "Gap between channel and substrate");
    model.component("relay").variable("var1")
         .set("Pc_body", "(body_gap<=0)*(tn - en*body_gap) + (body_gap >= 0)*tn*exp(-body_gap*en/tn)", "Penalty-based contact pressure for contacts");
    model.component("relay").variable("var1")
         .set("Pc_cont", "(cont_gap<=0)*(tn - en*cont_gap) + (cont_gap >= 0)*tn*exp(-cont_gap*en/tn)", "Penalty-based contact pressure for channels");
    model.component("relay").variable().create("var2");
    model.component("relay").variable("var2")
         .set("body_gap2", "(g_act - gaptol) + w2", "Gap between body and substrate");
    model.component("relay").variable("var2")
         .set("cont_gap2", "(g_act - t_cont - gaptol) + w2", "Gap between channel and substrate");
    model.component("relay").variable("var2")
         .set("Pc_body2", "(body_gap2<=0)*(tn - en*body_gap2) + (body_gap2 >= 0)*tn*exp(-body_gap2*en/tn)", "Penalty-based contact pressure for contacts");
    model.component("relay").variable("var2")
         .set("Pc_cont2", "(cont_gap2<=0)*(tn - en*cont_gap2) + (cont_gap2 >= 0)*tn*exp(-cont_gap2*en/tn)", "Penalty-based contact pressure for channels");

    model.component("relay").view("view1").hideObjects().create("hide1");
    model.component("relay").view("view1").hideEntities().create("hide1");
    model.component("relay").view("view1").hideEntities("hide1").set(1, 2);
    model.view().create("view3", 2);
    model.view().create("view4", 2);
    model.view().create("view5", 2);
    model.view().create("view6", 2);
    model.view().create("view7", 2);

    model.component("relay").material().create("sw1", "Switch");
    model.component("relay").material().create("mat7", "Common");
    model.component("relay").material().create("mat8", "Common");
    model.component("relay").material().create("mat11", "Common");
    model.component("relay").material().create("mat12", "Common");
    model.component("relay").material().create("mat13", "Common");
    model.component("relay").material().create("mat14", "Common");
    model.component("relay").material("sw1").selection().named("dif3");
    model.component("relay").material("sw1").feature().create("mat15", "Common", "relay");
    model.component("relay").material("sw1").feature().create("mat16", "Common", "relay");
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").func().create("eta", "Piecewise");
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").func().create("Cp", "Piecewise");
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").func().create("rho", "Analytic");
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").func().create("k", "Piecewise");
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").func().create("cs", "Analytic");
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").func().create("an1", "Analytic");
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").func().create("an2", "Analytic");
    model.component("relay").material("sw1").feature("mat15").propertyGroup()
         .create("NonlinearModel", "Nonlinear model");
    model.component("relay").material("mat7").selection().named("uni3");
    model.component("relay").material("mat7").propertyGroup().create("Enu", "Young's modulus and Poisson's ratio");
    model.component("relay").material("mat8").selection().named("uni4");
    model.component("relay").material("mat8").propertyGroup().create("Enu", "Young's modulus and Poisson's ratio");
    model.component("relay").material("mat11").selection().named("dif1");
    model.component("relay").material("mat11").propertyGroup().create("Enu", "Young's modulus and Poisson's ratio");
    model.component("relay").material("mat12").selection().named("geom1_imp1_Substrate_Metal_dom");
    model.component("relay").material("mat12").propertyGroup("def").func().create("k_solid_bulk_1", "Piecewise");
    model.component("relay").material("mat12").propertyGroup("def").func().create("res_solid_1", "Piecewise");
    model.component("relay").material("mat12").propertyGroup("def").func().create("alpha_solid_1", "Piecewise");
    model.component("relay").material("mat12").propertyGroup("def").func().create("C_solid_1", "Piecewise");
    model.component("relay").material("mat12").propertyGroup("def").func().create("sigma_solid_1", "Piecewise");
    model.component("relay").material("mat12").propertyGroup("def").func().create("HC_solid_1", "Piecewise");
    model.component("relay").material("mat12").propertyGroup("def").func().create("VP_solid_1", "Piecewise");
    model.component("relay").material("mat12").propertyGroup("def").func().create("rho_solid_1", "Piecewise");
    model.component("relay").material("mat12").propertyGroup("def").func().create("TD_solid_1", "Piecewise");
    model.component("relay").material("mat12").propertyGroup().create("ThermalExpansion", "Thermal expansion");
    model.component("relay").material("mat12").propertyGroup("ThermalExpansion").func()
         .create("dL_solid_1", "Piecewise");
    model.component("relay").material("mat12").propertyGroup("ThermalExpansion").func()
         .create("CTE_solid_1", "Piecewise");
    model.component("relay").material("mat12").propertyGroup().create("Enu", "Young's modulus and Poisson's ratio");
    model.component("relay").material("mat12").propertyGroup("Enu").func().create("E", "Piecewise");
    model.component("relay").material("mat12").propertyGroup("Enu").func().create("nu", "Piecewise");
    model.component("relay").material("mat12").propertyGroup().create("KG", "Bulk modulus and shear modulus");
    model.component("relay").material("mat12").propertyGroup("KG").func().create("mu", "Piecewise");
    model.component("relay").material("mat12").propertyGroup("KG").func().create("kappa", "Piecewise");
    model.component("relay").material("mat13").selection().named("geom1_imp1_Substrate_Landing_Pads_dom");
    model.component("relay").material("mat13").propertyGroup().create("Enu", "Young's modulus and Poisson's ratio");
    model.component("relay").material("mat14").selection().named("geom1_csel1_dom");
    model.component("relay").material("mat14").propertyGroup().create("Enu", "Young's modulus and Poisson's ratio");

    model.component("relay").common().create("free3", "DeformingDomain");
    model.component("relay").common().create("sym1", "Symmetry");
    model.component("relay").common("free3").selection().named("dif3");
    model.component("relay").common("sym1").selection().named("adj2");

    model.component("relay").physics().create("es", "Electrostatics", "geom1");
    model.component("relay").physics("es").create("term6", "Terminal", 2);
    model.component("relay").physics("es").feature("term6").selection().named("adj6");
    model.component("relay").physics("es").create("term61", "Terminal", 2);
    model.component("relay").physics("es").feature("term61").selection().named("adj6");
    model.component("relay").physics("es").create("term7", "Terminal", 2);
    model.component("relay").physics("es").feature("term7").selection().named("uni5");
    model.component("relay").physics("es").create("ccn2", "ChargeConservation", 3);
    model.component("relay").physics("es").feature("ccn2").selection().named("dif3");
    model.component("relay").physics("es").create("term41", "Terminal", 2);
    model.component("relay").physics("es").feature("term41").selection().named("adj9");
    model.component("relay").physics("es").create("term42", "Terminal", 2);
    model.component("relay").physics("es").feature("term42").selection().named("adj10");
    model.component("relay").physics("es").create("term43", "Terminal", 2);
    model.component("relay").physics("es").feature("term43").selection().named("adj11");
    model.component("relay").physics("es").create("term44", "Terminal", 2);
    model.component("relay").physics("es").feature("term44").selection().named("adj12");
    model.component("relay").physics("es").create("term45", "Terminal", 2);
    model.component("relay").physics("es").feature("term45").selection().named("adj13");
    model.component("relay").physics("es").create("term46", "Terminal", 2);
    model.component("relay").physics("es").feature("term46").selection().named("adj14");
    model.component("relay").physics("es").create("term47", "Terminal", 2);
    model.component("relay").physics("es").feature("term47").selection().named("adj15");
    model.component("relay").physics("es").create("term48", "Terminal", 2);
    model.component("relay").physics("es").feature("term48").selection().named("adj16");
    model.component("relay").physics("es").create("term37", "Terminal", 2);
    model.component("relay").physics("es").feature("term37").selection().named("adj18");
    model.component("relay").physics("es").create("term38", "Terminal", 2);
    model.component("relay").physics("es").feature("term38").selection().named("adj19");
    model.component("relay").physics("es").create("term39", "Terminal", 2);
    model.component("relay").physics("es").feature("term39").selection().named("adj20");
    model.component("relay").physics("es").create("term40", "Terminal", 2);
    model.component("relay").physics("es").feature("term40").selection().named("adj21");
    model.component("relay").physics("es").create("term49", "Terminal", 2);
    model.component("relay").physics("es").feature("term49").selection().named("adj22");
    model.component("relay").physics("es").create("term50", "Terminal", 2);
    model.component("relay").physics("es").feature("term50").selection().named("adj23");
    model.component("relay").physics("es").create("term51", "Terminal", 2);
    model.component("relay").physics("es").feature("term51").selection().named("adj24");
    model.component("relay").physics("es").create("term52", "Terminal", 2);
    model.component("relay").physics("es").feature("term52").selection().named("adj25");
    model.component("relay").physics("es").create("term53", "Terminal", 2);
    model.component("relay").physics("es").feature("term53").selection().named("adj26");
    model.component("relay").physics("es").create("term54", "Terminal", 2);
    model.component("relay").physics("es").feature("term54").selection().named("adj27");
    model.component("relay").physics("es").create("term55", "Terminal", 2);
    model.component("relay").physics("es").feature("term55").selection().named("adj28");
    model.component("relay").physics("es").create("term56", "Terminal", 2);
    model.component("relay").physics("es").feature("term56").selection().named("adj29");
    model.component("relay").physics("es").create("term57", "Terminal", 2);
    model.component("relay").physics("es").feature("term57").selection().named("adj30");
    model.component("relay").physics("es").create("term58", "Terminal", 2);
    model.component("relay").physics("es").feature("term58").selection().named("adj31");
    model.component("relay").physics("es").create("term59", "Terminal", 2);
    model.component("relay").physics("es").feature("term59").selection().named("adj32");
    model.component("relay").physics("es").create("term60", "Terminal", 2);
    model.component("relay").physics("es").feature("term60").selection().named("adj33");
    model.component("relay").physics().create("es2", "Electrostatics", "geom1");
    model.component("relay").physics("es2").setGroupBySpaceDimension(true);
    model.component("relay").physics("es2").create("gnd1", "Ground", 2);
    model.component("relay").physics("es2").feature("gnd1").selection().named("adj2");
    model.component("relay").physics("es2").create("term6", "Terminal", 2);
    model.component("relay").physics("es2").feature("term6").selection().named("adj6");
    model.component("relay").physics("es2").create("term7", "Terminal", 2);
    model.component("relay").physics("es2").feature("term7").selection().named("uni5");
    model.component("relay").physics("es2").create("ccn2", "ChargeConservation", 3);
    model.component("relay").physics("es2").feature("ccn2").selection().named("dif3");
    model.component("relay").physics("es2").create("term41", "Terminal", 2);
    model.component("relay").physics("es2").feature("term41").selection().named("adj9");
    model.component("relay").physics("es2").create("term42", "Terminal", 2);
    model.component("relay").physics("es2").feature("term42").selection().named("adj10");
    model.component("relay").physics("es2").create("term43", "Terminal", 2);
    model.component("relay").physics("es2").feature("term43").selection().named("adj11");
    model.component("relay").physics("es2").create("term44", "Terminal", 2);
    model.component("relay").physics("es2").feature("term44").selection().named("adj12");
    model.component("relay").physics("es2").create("term45", "Terminal", 2);
    model.component("relay").physics("es2").feature("term45").selection().named("adj13");
    model.component("relay").physics("es2").create("term46", "Terminal", 2);
    model.component("relay").physics("es2").feature("term46").selection().named("adj14");
    model.component("relay").physics("es2").create("term47", "Terminal", 2);
    model.component("relay").physics("es2").feature("term47").selection().named("adj15");
    model.component("relay").physics("es2").create("term48", "Terminal", 2);
    model.component("relay").physics("es2").feature("term48").selection().named("adj16");
    model.component("relay").physics("es2").create("term37", "Terminal", 2);
    model.component("relay").physics("es2").feature("term37").selection().named("adj18");
    model.component("relay").physics("es2").create("term38", "Terminal", 2);
    model.component("relay").physics("es2").feature("term38").selection().named("adj19");
    model.component("relay").physics("es2").create("term39", "Terminal", 2);
    model.component("relay").physics("es2").feature("term39").selection().named("adj20");
    model.component("relay").physics("es2").create("term40", "Terminal", 2);
    model.component("relay").physics("es2").feature("term40").selection().named("adj21");
    model.component("relay").physics("es2").create("term49", "Terminal", 2);
    model.component("relay").physics("es2").feature("term49").selection().named("adj22");
    model.component("relay").physics("es2").create("term50", "Terminal", 2);
    model.component("relay").physics("es2").feature("term50").selection().named("adj23");
    model.component("relay").physics("es2").create("term51", "Terminal", 2);
    model.component("relay").physics("es2").feature("term51").selection().named("adj24");
    model.component("relay").physics("es2").create("term52", "Terminal", 2);
    model.component("relay").physics("es2").feature("term52").selection().named("adj25");
    model.component("relay").physics("es2").create("term53", "Terminal", 2);
    model.component("relay").physics("es2").feature("term53").selection().named("adj26");
    model.component("relay").physics("es2").create("term54", "Terminal", 2);
    model.component("relay").physics("es2").feature("term54").selection().named("adj27");
    model.component("relay").physics("es2").create("term55", "Terminal", 2);
    model.component("relay").physics("es2").feature("term55").selection().named("adj28");
    model.component("relay").physics("es2").create("term56", "Terminal", 2);
    model.component("relay").physics("es2").feature("term56").selection().named("adj29");
    model.component("relay").physics("es2").create("term57", "Terminal", 2);
    model.component("relay").physics("es2").feature("term57").selection().named("adj30");
    model.component("relay").physics("es2").create("term58", "Terminal", 2);
    model.component("relay").physics("es2").feature("term58").selection().named("adj31");
    model.component("relay").physics("es2").create("term59", "Terminal", 2);
    model.component("relay").physics("es2").feature("term59").selection().named("adj32");
    model.component("relay").physics("es2").create("term60", "Terminal", 2);
    model.component("relay").physics("es2").feature("term60").selection().named("adj33");
    model.component("relay").physics().create("solid", "SolidMechanics", "geom1");
    model.component("relay").physics("solid").feature("lemm1").create("dmp1", "Damping", 3);
    model.component("relay").physics("solid").create("bndl1", "BoundaryLoad", 2);
    model.component("relay").physics("solid").feature("bndl1").selection().named("box2");
    model.component("relay").physics("solid").create("fix1", "Fixed", 2);
    model.component("relay").physics("solid").feature("fix1").selection().named("adj36");
    model.component("relay").physics("solid").create("bndl10", "BoundaryLoad", 2);
    model.component("relay").physics("solid").feature("bndl10").selection().named("box7");
    model.component("relay").physics("solid").create("bndl11", "BoundaryLoad", 2);
    model.component("relay").physics("solid").feature("bndl11").selection().named("box8");
    model.component("relay").physics().create("solid2", "SolidMechanics", "geom1");
    model.component("relay").physics("solid2").feature("lemm1").create("dmp2", "Damping", 3);
    model.component("relay").physics("solid2").create("fix1", "Fixed", 2);
    model.component("relay").physics("solid2").feature("fix1").selection().named("adj36");
    model.component("relay").physics("solid2").create("bndl10", "BoundaryLoad", 2);
    model.component("relay").physics("solid2").feature("bndl10").selection().named("box7");
    model.component("relay").physics("solid2").create("bndl11", "BoundaryLoad", 2);
    model.component("relay").physics("solid2").feature("bndl11").selection().named("box8");

    model.component("relay").multiphysics().create("eme1", "Electrostriction", 3);
    model.component("relay").multiphysics().create("eme2", "Electrostriction", 3);

    model.component("relay").mesh("mesh1").create("swe1", "Sweep");
    model.component("relay").mesh("mesh1").create("swe2", "Sweep");
    model.component("relay").mesh("mesh1").create("ftet1", "FreeTet");
    model.component("relay").mesh("mesh1").feature("swe1").selection().named("uni2");
    model.component("relay").mesh("mesh1").feature("swe2").selection().named("geom1_boxsel3");
    model.component("relay").mesh("mesh3").create("ftet1", "FreeTet");

    model.component("relay").variable("var1").label("Contact Variables");
    model.component("relay").variable("var2").label("Contact Variables 2");

    model.component("relay").view("view1").label("Main View");
    model.component("relay").view("view1").hideObjects("hide1").set("sph1");
    model.component("relay").view("view2").axis().set("xmin", -2.5300002098083496);
    model.component("relay").view("view2").axis().set("xmax", 2.5300002098083496);
    model.component("relay").view("view2").axis().set("ymin", -2.657870292663574);
    model.component("relay").view("view2").axis().set("ymax", 2.657870292663574);
    model.view("view3").label("Substrate Surface View 2D");
    model.view("view3").axis().set("xmin", -0.23723292350769043);
    model.view("view3").axis().set("xmax", 0.2550957202911377);
    model.view("view3").axis().set("ymin", -0.48018068075180054);
    model.view("view3").axis().set("ymax", -0.20851285755634308);
    model.view("view4").label("Contact-Dielectric Interface View");
    model.view("view4").axis().set("xmin", -1.7919703722000122);
    model.view("view4").axis().set("xmax", 1.8090864419937134);
    model.view("view4").axis().set("ymin", -1.2511005401611328);
    model.view("view4").axis().set("ymax", 1.1511468887329102);
    model.view("view5").label("Relay Cross-Section View");
    model.view("view5").axis().set("xmin", -2.9969098567962646);
    model.view("view5").axis().set("xmax", 2.9969098567962646);
    model.view("view5").axis().set("ymin", -2.5299999713897705);
    model.view("view5").axis().set("ymax", 2.5299999713897705);
    model.view("view6").label("Side View of Contact");
    model.view("view6").axis().set("xmin", -0.49985504150390625);
    model.view("view6").axis().set("xmax", 0.4999656677246094);
    model.view("view6").axis().set("ymin", -0.1406627893447876);
    model.view("view6").axis().set("ymax", 0.2406522035598755);
    model.view("view6").axis().set("viewscaletype", "automatic");
    model.view("view7").axis().set("xmin", -1.9776076078414917);
    model.view("view7").axis().set("xmax", 1.9776076078414917);
    model.view("view7").axis().set("ymin", -1.3268780708312988);
    model.view("view7").axis().set("ymax", 1.3268780708312988);

    model.component("relay").material("sw1").label("Ambient Fluid");
    model.component("relay").material("sw1").set("family", "air");
    model.component("relay").material("sw1").feature("mat15").label("Air");
    model.component("relay").material("sw1").feature("mat15").set("family", "air");
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").func("eta").set("arg", "T");
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").func("eta")
         .set("pieces", new String[][]{{"200.0", "1600.0", "-8.38278E-7+8.35717342E-8*T^1-7.69429583E-11*T^2+4.6437266E-14*T^3-1.06585607E-17*T^4"}});
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").func("eta").set("argunit", "K");
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").func("eta").set("fununit", "Pa*s");
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").func("Cp").set("arg", "T");
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").func("Cp")
         .set("pieces", new String[][]{{"200.0", "1600.0", "1047.63657-0.372589265*T^1+9.45304214E-4*T^2-6.02409443E-7*T^3+1.2858961E-10*T^4"}});
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").func("Cp").set("argunit", "K");
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").func("Cp")
         .set("fununit", "J/(kg*K)");
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").func("rho")
         .set("expr", "pA*0.02897/R_const[K*mol/J]/T");
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").func("rho")
         .set("args", new String[]{"pA", "T"});
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").func("rho")
         .set("dermethod", "manual");
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").func("rho")
         .set("argders", new String[][]{{"pA", "d(pA*0.02897/R_const/T,pA)"}, {"T", "d(pA*0.02897/R_const/T,T)"}});
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").func("rho").set("argunit", "Pa,K");
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").func("rho")
         .set("fununit", "kg/m^3");
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").func("rho")
         .set("plotargs", new String[][]{{"pA", "0", "1"}, {"T", "0", "1"}});
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").func("k").set("arg", "T");
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").func("k")
         .set("pieces", new String[][]{{"200.0", "1600.0", "-0.00227583562+1.15480022E-4*T^1-7.90252856E-8*T^2+4.11702505E-11*T^3-7.43864331E-15*T^4"}});
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").func("k").set("argunit", "K");
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").func("k")
         .set("fununit", "W/(m*K)");
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").func("cs")
         .set("expr", "sqrt(1.4*R_const[K*mol/J]/0.02897*T)");
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").func("cs")
         .set("args", new String[]{"T"});
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").func("cs")
         .set("dermethod", "manual");
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").func("cs").set("argunit", "K");
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").func("cs").set("fununit", "m/s");

    return model;
  }

  public static Model run3(Model model) {
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").func("cs")
         .set("plotargs", new String[][]{{"T", "273.15", "373.15"}});
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").func("an1").label("Analytic ");
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").func("an1")
         .set("funcname", "alpha_p");
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").func("an1")
         .set("expr", "-1/rho(pA,T)*d(rho(pA,T),T)");
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").func("an1")
         .set("args", new String[]{"pA", "T"});
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").func("an1")
         .set("argunit", "Pa, K");
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").func("an1").set("fununit", "1/K");
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").func("an1")
         .set("plotargs", new String[][]{{"pA", "101325", "101325"}, {"T", "273.15", "373.15"}});
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").func("an2").set("funcname", "muB");
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").func("an2")
         .set("expr", "0.6*eta(T)");
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").func("an2")
         .set("args", new String[]{"T"});
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").func("an2").set("argunit", "K");
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").func("an2").set("fununit", "Pa*s");
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").func("an2")
         .set("plotargs", new String[][]{{"T", "200", "1600"}});
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def")
         .set("thermalexpansioncoefficient", "");
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").set("molarmass", "");
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").set("bulkviscosity", "");
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def")
         .set("thermalexpansioncoefficient", new String[]{"alpha_p(pA,T)", "0", "0", "0", "alpha_p(pA,T)", "0", "0", "0", "alpha_p(pA,T)"});
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def")
         .set("molarmass", "0.02897[kg/mol]");
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").set("bulkviscosity", "muB(T)");
//     model.component("relay").material("sw1").feature("mat15").propertyGroup("def")
//          .descr("thermalexpansioncoefficient_symmetry", "");
//     model.component("relay").material("sw1").feature("mat15").propertyGroup("def").descr("molarmass_symmetry", "");
//     model.component("relay").material("sw1").feature("mat15").propertyGroup("def")
//          .descr("bulkviscosity_symmetry", "");
//     model.component("relay").material("sw1").feature("mat15").propertyGroup("def").set("dynamicviscosity", "eta(T)");
//     model.component("relay").material("sw1").feature("mat15").propertyGroup("def")
//          .descr("dynamicviscosity_symmetry", "");
//     model.component("relay").material("sw1").feature("mat15").propertyGroup("def").set("ratioofspecificheat", "1.4");
//     model.component("relay").material("sw1").feature("mat15").propertyGroup("def")
//          .descr("ratioofspecificheat_symmetry", "");
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def")
         .set("electricconductivity", new String[]{"0[S/m]", "0", "0", "0", "0[S/m]", "0", "0", "0", "0[S/m]"});
//     model.component("relay").material("sw1").feature("mat15").propertyGroup("def")
//          .descr("electricconductivity_symmetry", "");
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").set("heatcapacity", "Cp(T)");
//     model.component("relay").material("sw1").feature("mat15").propertyGroup("def").descr("heatcapacity_symmetry", "");
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").set("density", "rho(pA,T)");
//     model.component("relay").material("sw1").feature("mat15").propertyGroup("def").descr("density_symmetry", "");
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def")
         .set("thermalconductivity", new String[]{"k(T)", "0", "0", "0", "k(T)", "0", "0", "0", "k(T)"});
//     model.component("relay").material("sw1").feature("mat15").propertyGroup("def")
//          .descr("thermalconductivity_symmetry", "");
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").set("soundspeed", "cs(T)");
//     model.component("relay").material("sw1").feature("mat15").propertyGroup("def").descr("soundspeed_symmetry", "");
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def")
         .set("relpermittivity", new String[]{"1", "0", "0", "0", "1", "0", "0", "0", "1"});
//     model.component("relay").material("sw1").feature("mat15").propertyGroup("def")
//          .set("relpermittivity_symmetry", "0");
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").addInput("temperature");
    model.component("relay").material("sw1").feature("mat15").propertyGroup("def").addInput("pressure");
    model.component("relay").material("sw1").feature("mat15").propertyGroup("NonlinearModel")
         .set("BA", "(def.gamma+1)/2");
//     model.component("relay").material("sw1").feature("mat15").propertyGroup("NonlinearModel")
//          .descr("BA_symmetry", "");
    model.component("relay").material("sw1").feature("mat15").materialType("nonSolid");
    model.component("relay").material("sw1").feature("mat16").label("Castor Oil");
    model.component("relay").material("sw1").feature("mat16").set("family", "air");
//     model.component("relay").material("sw1").feature("mat16").propertyGroup("def")
//          .set("thermalexpansioncoefficient_symmetry", "3");
//     model.component("relay").material("sw1").feature("mat16").propertyGroup("def")
//          .descr("thermalexpansioncoefficient_symmetry", "");
//     model.component("relay").material("sw1").feature("mat16").propertyGroup("def").set("molarmass_symmetry", "0");
//     model.component("relay").material("sw1").feature("mat16").propertyGroup("def").descr("molarmass_symmetry", "");
//     model.component("relay").material("sw1").feature("mat16").propertyGroup("def").set("bulkviscosity_symmetry", "0");
//     model.component("relay").material("sw1").feature("mat16").propertyGroup("def")
//          .descr("bulkviscosity_symmetry", "");
    model.component("relay").material("sw1").feature("mat16").propertyGroup("def").set("dynamicviscosity", "0.585");
//     model.component("relay").material("sw1").feature("mat16").propertyGroup("def")
//          .descr("dynamicviscosity_symmetry", "");
//     model.component("relay").material("sw1").feature("mat16").propertyGroup("def")
//          .set("ratioofspecificheat_symmetry", "0");
//     model.component("relay").material("sw1").feature("mat16").propertyGroup("def")
//          .descr("ratioofspecificheat_symmetry", "");
//     model.component("relay").material("sw1").feature("mat16").propertyGroup("def")
//          .set("electricconductivity_symmetry", "3");
//     model.component("relay").material("sw1").feature("mat16").propertyGroup("def")
//          .descr("electricconductivity_symmetry", "");
//     model.component("relay").material("sw1").feature("mat16").propertyGroup("def").set("heatcapacity_symmetry", "0");
//     model.component("relay").material("sw1").feature("mat16").propertyGroup("def").descr("heatcapacity_symmetry", "");
    model.component("relay").material("sw1").feature("mat16").propertyGroup("def").set("density", "957.9");
//     model.component("relay").material("sw1").feature("mat16").propertyGroup("def").descr("density_symmetry", "");
//     model.component("relay").material("sw1").feature("mat16").propertyGroup("def")
//          .set("thermalconductivity_symmetry", "3");
//     model.component("relay").material("sw1").feature("mat16").propertyGroup("def")
//          .descr("thermalconductivity_symmetry", "");
//     model.component("relay").material("sw1").feature("mat16").propertyGroup("def").set("soundspeed_symmetry", "0");
//     model.component("relay").material("sw1").feature("mat16").propertyGroup("def").descr("soundspeed_symmetry", "");
    model.component("relay").material("sw1").feature("mat16").propertyGroup("def")
         .set("relpermittivity", new String[]{"4.7", "0", "0", "0", "4.7", "0", "0", "0", "4.7"});
//     model.component("relay").material("sw1").feature("mat16").propertyGroup("def")
//          .set("relpermittivity_symmetry", "0");
    model.component("relay").material("sw1").feature("mat16").propertyGroup("def").set("bulkviscosity", "0");
    model.component("relay").material("sw1").feature("mat16").propertyGroup("def").addInput("temperature");
    model.component("relay").material("sw1").feature("mat16").propertyGroup("def").addInput("pressure");
    model.component("relay").material("sw1").feature("mat16").materialType("nonSolid");
    model.component("relay").material("mat7").label("Body - Poly-SiGe");
    model.component("relay").material("mat7").set("family", "custom");
    model.component("relay").material("mat7").set("specular", "custom");
    model.component("relay").material("mat7").set("customspecular", new double[]{0.7843137254901961, 1, 1});
    model.component("relay").material("mat7").set("diffuse", "custom");
    model.component("relay").material("mat7")
         .set("customdiffuse", new double[]{0.6666666666666666, 0.6666666666666666, 0.7058823529411765});
    model.component("relay").material("mat7").set("ambient", "custom");
    model.component("relay").material("mat7")
         .set("customambient", new double[]{0.6666666666666666, 0.6666666666666666, 0.7058823529411765});
    model.component("relay").material("mat7").set("noise", true);
    model.component("relay").material("mat7").set("noisefreq", 1);
    model.component("relay").material("mat7").set("lighting", "cooktorrance");
    model.component("relay").material("mat7").set("fresnel", 0.7);
    model.component("relay").material("mat7").set("roughness", 0.5);
    model.component("relay").material("mat7").propertyGroup("def").set("resistivity", "");
    model.component("relay").material("mat7").propertyGroup("def")
         .set("thermalexpansioncoefficient", new String[]{"2.6e-6[1/K]", "0", "0", "0", "2.6e-6[1/K]", "0", "0", "0", "2.6e-6[1/K]"});
//     model.component("relay").material("mat7").propertyGroup("def").descr("thermalexpansioncoefficient_symmetry", "");
    model.component("relay").material("mat7").propertyGroup("def").set("heatcapacity", "678[J/(kg*K)]");
//     model.component("relay").material("mat7").propertyGroup("def").descr("heatcapacity_symmetry", "");
    model.component("relay").material("mat7").propertyGroup("def")
         .set("relpermittivity", new String[]{"4.5", "0", "0", "0", "4.5", "0", "0", "0", "4.5"});
//     model.component("relay").material("mat7").propertyGroup("def").descr("relpermittivity_symmetry", "");
    model.component("relay").material("mat7").propertyGroup("def").set("density", "4126[kg/m^3]");
//     model.component("relay").material("mat7").propertyGroup("def").descr("density_symmetry", "");
    model.component("relay").material("mat7").propertyGroup("def")
         .set("thermalconductivity", new String[]{"34[W/(m*K)]", "0", "0", "0", "34[W/(m*K)]", "0", "0", "0", "34[W/(m*K)]"});
//     model.component("relay").material("mat7").propertyGroup("def").descr("thermalconductivity_symmetry", "");
    model.component("relay").material("mat7").propertyGroup("def")
         .set("resistivity", new String[]{"1.49e-5", "0", "0", "0", "1.49e-5", "0", "0", "0", "1.49e-5"});
//     model.component("relay").material("mat7").propertyGroup("def").set("resistivity_symmetry", "0");
    model.component("relay").material("mat7").propertyGroup("Enu").set("youngsmodulus", "145e9[Pa]");
//     model.component("relay").material("mat7").propertyGroup("Enu").descr("youngsmodulus_symmetry", "");
    model.component("relay").material("mat7").propertyGroup("Enu").set("poissonsratio", "0.27193");
//     model.component("relay").material("mat7").propertyGroup("Enu").descr("poissonsratio_symmetry", "");
    model.component("relay").material("mat8").label("Contact Channel - Tungsten");
    model.component("relay").material("mat8").set("family", "custom");
    model.component("relay").material("mat8").set("specular", "custom");
    model.component("relay").material("mat8").set("customspecular", new double[]{0.7843137254901961, 1, 1});
    model.component("relay").material("mat8").set("diffuse", "custom");
    model.component("relay").material("mat8")
         .set("customdiffuse", new double[]{0.7843137254901961, 0.7843137254901961, 0.7843137254901961});
    model.component("relay").material("mat8").set("ambient", "custom");
    model.component("relay").material("mat8")
         .set("customambient", new double[]{0.7843137254901961, 0.7843137254901961, 0.7843137254901961});
    model.component("relay").material("mat8").set("noise", true);
    model.component("relay").material("mat8").set("noisefreq", 1);
    model.component("relay").material("mat8").set("lighting", "cooktorrance");
    model.component("relay").material("mat8").set("fresnel", 0.9);
    model.component("relay").material("mat8").propertyGroup("def")
         .set("electricconductivity", new String[]{"20.0e6[S/m]", "0", "0", "0", "20.0e6[S/m]", "0", "0", "0", "20.0e6[S/m]"});
//     model.component("relay").material("mat8").propertyGroup("def").descr("electricconductivity_symmetry", "");
    model.component("relay").material("mat8").propertyGroup("def")
         .set("thermalexpansioncoefficient", new String[]{"4.5e-6[1/K]", "0", "0", "0", "4.5e-6[1/K]", "0", "0", "0", "4.5e-6[1/K]"});
//     model.component("relay").material("mat8").propertyGroup("def").descr("thermalexpansioncoefficient_symmetry", "");
    model.component("relay").material("mat8").propertyGroup("def").set("heatcapacity", "132[J/(kg*K)]");
//     model.component("relay").material("mat8").propertyGroup("def").descr("heatcapacity_symmetry", "");
    model.component("relay").material("mat8").propertyGroup("def").set("density", "19350[kg/m^3]");
//     model.component("relay").material("mat8").propertyGroup("def").descr("density_symmetry", "");
    model.component("relay").material("mat8").propertyGroup("def")
         .set("thermalconductivity", new String[]{"174[W/(m*K)]", "0", "0", "0", "174[W/(m*K)]", "0", "0", "0", "174[W/(m*K)]"});
//     model.component("relay").material("mat8").propertyGroup("def").descr("thermalconductivity_symmetry", "");
    model.component("relay").material("mat8").propertyGroup("def")
         .set("relpermittivity", new String[]{"1", "0", "0", "0", "1", "0", "0", "0", "1"});
//     model.component("relay").material("mat8").propertyGroup("def").set("relpermittivity_symmetry", "0");
    model.component("relay").material("mat8").propertyGroup("Enu").set("youngsmodulus", "411e9[Pa]");
//     model.component("relay").material("mat8").propertyGroup("Enu").descr("youngsmodulus_symmetry", "");
    model.component("relay").material("mat8").propertyGroup("Enu").set("poissonsratio", "0.28");
//     model.component("relay").material("mat8").propertyGroup("Enu").descr("poissonsratio_symmetry", "");
    model.component("relay").material("mat11").label("Dielectric - Aluminum Oxide");
    model.component("relay").material("mat11").propertyGroup("def")
         .set("electricconductivity", new String[]{"0[S/m]", "0", "0", "0", "0[S/m]", "0", "0", "0", "0[S/m]"});
//     model.component("relay").material("mat11").propertyGroup("def").descr("electricconductivity_symmetry", "");
    model.component("relay").material("mat11").propertyGroup("def")
         .set("thermalexpansioncoefficient", new String[]{"6.5e-6[1/K]", "0", "0", "0", "6.5e-6[1/K]", "0", "0", "0", "6.5e-6[1/K]"});
//     model.component("relay").material("mat11").propertyGroup("def").descr("thermalexpansioncoefficient_symmetry", "");
    model.component("relay").material("mat11").propertyGroup("def").set("heatcapacity", "730[J/(kg*K)]");
//     model.component("relay").material("mat11").propertyGroup("def").descr("heatcapacity_symmetry", "");
    model.component("relay").material("mat11").propertyGroup("def")
         .set("relpermittivity", new String[]{"5.7", "0", "0", "0", "5.7", "0", "0", "0", "5.7"});
//     model.component("relay").material("mat11").propertyGroup("def").descr("relpermittivity_symmetry", "");
    model.component("relay").material("mat11").propertyGroup("def").set("density", "3965[kg/m^3]");
//     model.component("relay").material("mat11").propertyGroup("def").descr("density_symmetry", "");
    model.component("relay").material("mat11").propertyGroup("def")
         .set("thermalconductivity", new String[]{"35[W/(m*K)]", "0", "0", "0", "35[W/(m*K)]", "0", "0", "0", "35[W/(m*K)]"});
//     model.component("relay").material("mat11").propertyGroup("def").descr("thermalconductivity_symmetry", "");
    model.component("relay").material("mat11").propertyGroup("Enu").set("youngsmodulus", "400e9[Pa]");
//     model.component("relay").material("mat11").propertyGroup("Enu").descr("youngsmodulus_symmetry", "");
    model.component("relay").material("mat11").propertyGroup("Enu").set("poissonsratio", "0.22");
//     model.component("relay").material("mat11").propertyGroup("Enu").descr("poissonsratio_symmetry", "");
    model.component("relay").material("mat12").label("Substrate Metal - Aluminum");
    model.component("relay").material("mat12").set("family", "aluminum");
    model.component("relay").material("mat12").propertyGroup("def").func("k_solid_bulk_1").label("Piecewise");
    model.component("relay").material("mat12").propertyGroup("def").func("k_solid_bulk_1").set("arg", "T");
    model.component("relay").material("mat12").propertyGroup("def").func("k_solid_bulk_1")
         .set("pieces", new String[][]{{"0.0", "14.0", "3895.7*T^1+203.42*T^2-56.434*T^3+2.0664*T^4"}, 
         {"14.0", "50.0", "49148.0-2950.9*T^1+63.175*T^2-0.46605*T^3"}, 
         {"50.0", "82.0", "15117.0-626.0*T^1+10.348*T^2-0.078676*T^3+2.2917E-4*T^4"}, 
         {"82.0", "297.0", "913.09-12.076*T^1+0.080875*T^2-2.3988E-4*T^3+2.6487E-7*T^4"}, 
         {"297.0", "933.0", "39.646+1.684*T^1-0.0054134*T^2+8.4313E-6*T^3-6.537E-9*T^4+2.002E-12*T^5"}});
    model.component("relay").material("mat12").propertyGroup("def").func("res_solid_1").label("Piecewise 1");
    model.component("relay").material("mat12").propertyGroup("def").func("res_solid_1").set("arg", "T");
    model.component("relay").material("mat12").propertyGroup("def").func("res_solid_1")
         .set("pieces", new String[][]{{"1.0", "19.5", "1.091612E-12-1.10726E-13*T^1+3.696901E-14*T^2-2.781934E-15*T^3+1.008733E-16*T^4"}, 
         {"19.5", "50.6", "-3.323487E-11+7.29041E-12*T^1-4.771551E-13*T^2+1.071535E-14*T^3"}, 
         {"50.6", "200.0", "1.0445563E-10-3.988929E-11*T^1+1.061978E-12*T^2-2.337666E-15*T^3"}, 
         {"200.0", "933.0", "-1.037048E-8+1.451201E-10*T^1-8.192563E-14*T^2+6.619834E-17*T^3"}});
    model.component("relay").material("mat12").propertyGroup("def").func("alpha_solid_1").label("Piecewise 2");
    model.component("relay").material("mat12").propertyGroup("def").func("alpha_solid_1").set("arg", "T");
    model.component("relay").material("mat12").propertyGroup("def").func("alpha_solid_1")
         .set("pieces", new String[][]{{"20.0", "220.0", "1.371347E-5+7.808536E-8*T^1-2.568882E-10*T^2+3.615726E-13*T^3"}, {"220.0", "610.0", "5.760185E-6+1.707141E-7*T^1-6.548135E-10*T^2+1.220625E-12*T^3-1.064883E-15*T^4+3.535918E-19*T^5"}, {"610.0", "933.0", "1.9495E-5+9.630182E-9*T^1+9.462013E-13*T^2"}});
    model.component("relay").material("mat12").propertyGroup("def").func("C_solid_1").label("Piecewise 3");
    model.component("relay").material("mat12").propertyGroup("def").func("C_solid_1").set("arg", "T");
    model.component("relay").material("mat12").propertyGroup("def").func("C_solid_1")
         .set("pieces", new String[][]{{"100.0", "320.0", "-290.416126+11.1810036*T^1-0.0412540099*T^2+7.11275398E-5*T^3-4.60821994E-8*T^4"}, {"320.0", "933.0", "595.658507+1.51302896*T^1-0.00207006538*T^2+1.30360846E-6*T^3"}});
    model.component("relay").material("mat12").propertyGroup("def").func("sigma_solid_1").label("Piecewise 4");
    model.component("relay").material("mat12").propertyGroup("def").func("sigma_solid_1").set("arg", "T");
    model.component("relay").material("mat12").propertyGroup("def").func("sigma_solid_1")
         .set("pieces", new String[][]{{"1.0", "19.5", "1/(1.008733E-16*T^4-2.781934E-15*T^3+3.696901E-14*T^2-1.107260E-13*T+1.091612E-12)"}, 
         {"19.5", "50.6", "1/(1.071535E-14*T^3-4.771551E-13*T^2+7.290410E-12*T-3.323487E-11)"}, 
         {"50.6", "200.0", "1/(-2.337666E-15*T^3+1.061978E-12*T^2-3.988929E-11*T+1.0445563E-10)"}, 
         {"200.0", "933.0", "1/(6.619834E-17*T^3-8.192563E-14*T^2+1.451201E-10*T-1.037048E-08)"}});
    model.component("relay").material("mat12").propertyGroup("def").func("HC_solid_1").label("Piecewise 5");
    model.component("relay").material("mat12").propertyGroup("def").func("HC_solid_1").set("arg", "T");
    model.component("relay").material("mat12").propertyGroup("def").func("HC_solid_1")
         .set("pieces", new String[][]{{"100.0", "320.0", "-7.83586214+0.301680207*T^1-0.00111309504*T^2+1.91912758E-6*T^3-1.24336723E-9*T^4"}, {"320.0", "933.0", "16.0717565+0.0408237901*T^1-5.58534712E-5*T^2+3.51733064E-8*T^3"}});
    model.component("relay").material("mat12").propertyGroup("def").func("VP_solid_1").label("Piecewise 6");
    model.component("relay").material("mat12").propertyGroup("def").func("VP_solid_1").set("arg", "T");
    model.component("relay").material("mat12").propertyGroup("def").func("VP_solid_1")
         .set("pieces", new String[][]{{"293.0", "933.0", "(exp((-1.73420000e+04/T-7.92700000e-01*log10(T)+1.23398100e+01)*log(10.0)))*1.33320000e+02"}});
    model.component("relay").material("mat12").propertyGroup("def").func("rho_solid_1").label("Piecewise 7");
    model.component("relay").material("mat12").propertyGroup("def").func("rho_solid_1").set("arg", "T");
    model.component("relay").material("mat12").propertyGroup("def").func("rho_solid_1")
         .set("pieces", new String[][]{{"20.0", "130.0", "2734.317-0.02751647*T^1+0.001016054*T^2-1.700864E-5*T^3+5.734155E-8*T^4"}, {"130.0", "933.0", "2736.893-0.006011681*T^1-7.012444E-4*T^2+1.3582E-6*T^3-1.367828E-9*T^4+5.177991E-13*T^5"}});
    model.component("relay").material("mat12").propertyGroup("def").func("TD_solid_1").label("Piecewise 8");
    model.component("relay").material("mat12").propertyGroup("def").func("TD_solid_1").set("arg", "T");
    model.component("relay").material("mat12").propertyGroup("def").func("TD_solid_1")
         .set("pieces", new String[][]{{"100.0", "199.0", "0.002133702-4.812031E-5*T^1+4.79456E-7*T^2-2.464699E-9*T^3+6.456561E-12*T^4-6.843904E-15*T^5"}, {"199.0", "384.0", "-2.668677E-4+8.197942E-6*T^1-6.451378E-8*T^2+2.363432E-10*T^3-4.135319E-13*T^4+2.797142E-16*T^5"}, {"384.0", "933.0", "1.171846E-4-7.450324E-8*T^1+5.694632E-11*T^2-4.064992E-14*T^3"}});
    model.component("relay").material("mat12").propertyGroup("def")
         .set("thermalconductivity", new String[]{"k_solid_bulk_1(T[1/K])[W/(m*K)]", "0", "0", "0", "k_solid_bulk_1(T[1/K])[W/(m*K)]", "0", "0", "0", "k_solid_bulk_1(T[1/K])[W/(m*K)]"});
//     model.component("relay").material("mat12").propertyGroup("def").set("thermalconductivity_symmetry", "0");
    model.component("relay").material("mat12").propertyGroup("def")
         .set("resistivity", new String[]{"res_solid_1(T[1/K])[ohm*m]", "0", "0", "0", "res_solid_1(T[1/K])[ohm*m]", "0", "0", "0", "res_solid_1(T[1/K])[ohm*m]"});
//     model.component("relay").material("mat12").propertyGroup("def").set("resistivity_symmetry", "0");
    model.component("relay").material("mat12").propertyGroup("def")
         .set("thermalexpansioncoefficient", new String[]{"(alpha_solid_1(T[1/K])[1/K]+(Tempref-293[K])*if(abs(T-Tempref)>1e-3,(alpha_solid_1(T[1/K])[1/K]-alpha_solid_1(Tempref[1/K])[1/K])/(T-Tempref),d(alpha_solid_1(T[1/K])[1/K],T)))/(1+alpha_solid_1(Tempref[1/K])[1/K]*(Tempref-293[K]))", "0", "0", "0", "(alpha_solid_1(T[1/K])[1/K]+(Tempref-293[K])*if(abs(T-Tempref)>1e-3,(alpha_solid_1(T[1/K])[1/K]-alpha_solid_1(Tempref[1/K])[1/K])/(T-Tempref),d(alpha_solid_1(T[1/K])[1/K],T)))/(1+alpha_solid_1(Tempref[1/K])[1/K]*(Tempref-293[K]))", "0", "0", "0", "(alpha_solid_1(T[1/K])[1/K]+(Tempref-293[K])*if(abs(T-Tempref)>1e-3,(alpha_solid_1(T[1/K])[1/K]-alpha_solid_1(Tempref[1/K])[1/K])/(T-Tempref),d(alpha_solid_1(T[1/K])[1/K],T)))/(1+alpha_solid_1(Tempref[1/K])[1/K]*(Tempref-293[K]))"});
//     model.component("relay").material("mat12").propertyGroup("def").set("thermalexpansioncoefficient_symmetry", "0");
    model.component("relay").material("mat12").propertyGroup("def")
         .set("heatcapacity", "C_solid_1(T[1/K])[J/(kg*K)]");
    model.component("relay").material("mat12").propertyGroup("def")
         .set("electricconductivity", new String[]{"sigma_solid_1(T[1/K])[S/m]", "0", "0", "0", "sigma_solid_1(T[1/K])[S/m]", "0", "0", "0", "sigma_solid_1(T[1/K])[S/m]"});
//     model.component("relay").material("mat12").propertyGroup("def").set("electricconductivity_symmetry", "0");
    model.component("relay").material("mat12").propertyGroup("def").set("HC", "HC_solid_1(T[1/K])[J/(mol*K)]");
    model.component("relay").material("mat12").propertyGroup("def").set("VP", "VP_solid_1(T[1/K])[Pa]");
    model.component("relay").material("mat12").propertyGroup("def").set("density", "rho_solid_1(T[1/K])[kg/m^3]");
    model.component("relay").material("mat12").propertyGroup("def").set("TD", "TD_solid_1(T[1/K])[m^2/s]");
    model.component("relay").material("mat12").propertyGroup("def")
         .set("relpermittivity", new String[]{"1", "0", "0", "0", "1", "0", "0", "0", "1"});
//     model.component("relay").material("mat12").propertyGroup("def").set("relpermittivity_symmetry", "0");
    model.component("relay").material("mat12").propertyGroup("def").addInput("temperature");
    model.component("relay").material("mat12").propertyGroup("def").addInput("strainreferencetemperature");
    model.component("relay").material("mat12").propertyGroup("ThermalExpansion").func("dL_solid_1")
         .label("Piecewise");
    model.component("relay").material("mat12").propertyGroup("ThermalExpansion").func("dL_solid_1").set("arg", "T");
    model.component("relay").material("mat12").propertyGroup("ThermalExpansion").func("dL_solid_1")
         .set("pieces", new String[][]{{"20.0", "188.0", "-0.004116601-4.000347E-6*T^1+5.370388E-8*T^2+3.714324E-10*T^3-1.45073E-12*T^4"}, {"188.0", "933.0", "-0.00631208932+2.156284E-5*T^1-4.744254E-9*T^2+1.811015E-11*T^3-7.336673E-15*T^4"}});
    model.component("relay").material("mat12").propertyGroup("ThermalExpansion").func("CTE_solid_1")
         .label("Piecewise 1");
    model.component("relay").material("mat12").propertyGroup("ThermalExpansion").func("CTE_solid_1").set("arg", "T");
    model.component("relay").material("mat12").propertyGroup("ThermalExpansion").func("CTE_solid_1")
         .set("pieces", new String[][]{{"20.0", "79.0", "-3.317274E-6+3.068688E-7*T^1-1.004816E-8*T^2+1.724768E-10*T^3-8.846061E-13*T^4"}, {"79.0", "230.0", "-2.288925E-5+6.674915E-7*T^1-4.402622E-9*T^2+1.455358E-11*T^3-1.910622E-14*T^4"}, {"230.0", "900.0", "1.24296E-5+5.050772E-8*T^1-5.806556E-11*T^2+3.014305E-14*T^3"}});
    model.component("relay").material("mat12").propertyGroup("ThermalExpansion").set("alphatan", "");
    model.component("relay").material("mat12").propertyGroup("ThermalExpansion").set("dL", "");
    model.component("relay").material("mat12").propertyGroup("ThermalExpansion").set("alphatanIso", "");
    model.component("relay").material("mat12").propertyGroup("ThermalExpansion").set("dLIso", "");
    model.component("relay").material("mat12").propertyGroup("ThermalExpansion")
         .set("alphatan", new String[]{"CTE_solid_1(T[1/K])[1/K]", "0", "0", "0", "CTE_solid_1(T[1/K])[1/K]", "0", "0", "0", "CTE_solid_1(T[1/K])[1/K]"});
    model.component("relay").material("mat12").propertyGroup("ThermalExpansion")
         .set("dL", new String[]{"(dL_solid_1(T[1/K])-dL_solid_1(Tempref[1/K]))/(1+dL_solid_1(Tempref[1/K]))", "0", "0", "0", "(dL_solid_1(T[1/K])-dL_solid_1(Tempref[1/K]))/(1+dL_solid_1(Tempref[1/K]))", "0", "0", "0", "(dL_solid_1(T[1/K])-dL_solid_1(Tempref[1/K]))/(1+dL_solid_1(Tempref[1/K]))"});
    model.component("relay").material("mat12").propertyGroup("ThermalExpansion")
         .set("alphatanIso", "CTE_solid_1(T[1/K])[1/K]");
    model.component("relay").material("mat12").propertyGroup("ThermalExpansion")
         .set("dLIso", "(dL_solid_1(T[1/K])-dL_solid_1(Tempref[1/K]))/(1+dL_solid_1(Tempref[1/K]))");
//     model.component("relay").material("mat12").propertyGroup("ThermalExpansion").set("alphatan_symmetry", "0");
//     model.component("relay").material("mat12").propertyGroup("ThermalExpansion").set("dL_symmetry", "0");
    model.component("relay").material("mat12").propertyGroup("ThermalExpansion").addInput("temperature");
    model.component("relay").material("mat12").propertyGroup("ThermalExpansion")
         .addInput("strainreferencetemperature");
    model.component("relay").material("mat12").propertyGroup("Enu").func("E").set("arg", "T");
    model.component("relay").material("mat12").propertyGroup("Enu").func("E")
         .set("pieces", new String[][]{{"0.0", "773.0", "7.659324E10+2007396.0*T^1-186458.4*T^2+419.2175*T^3-0.3495083*T^4"}});
    model.component("relay").material("mat12").propertyGroup("Enu").func("nu").label("Piecewise 1");
    model.component("relay").material("mat12").propertyGroup("Enu").func("nu").set("arg", "T");
    model.component("relay").material("mat12").propertyGroup("Enu").func("nu")
         .set("pieces", new String[][]{{"0.0", "773.0", "0.3238668+3.754548E-6*T^1+2.213647E-7*T^2-6.565023E-10*T^3+4.21277E-13*T^4+3.170505E-16*T^5"}});
    model.component("relay").material("mat12").propertyGroup("Enu").set("youngsmodulus", "E(T[1/K])[Pa]");
    model.component("relay").material("mat12").propertyGroup("Enu").set("poissonsratio", "nu(T[1/K])");
    model.component("relay").material("mat12").propertyGroup("Enu").addInput("temperature");
    model.component("relay").material("mat12").propertyGroup("KG").func("mu").set("arg", "T");
    model.component("relay").material("mat12").propertyGroup("KG").func("mu")
         .set("pieces", new String[][]{{"0.0", "773.0", "2.894653E10-120032.4*T^1-69037.36*T^2+158.6722*T^3-0.1348974*T^4"}});
    model.component("relay").material("mat12").propertyGroup("KG").func("kappa").label("Piecewise 1");
    model.component("relay").material("mat12").propertyGroup("KG").func("kappa").set("arg", "T");
    model.component("relay").material("mat12").propertyGroup("KG").func("kappa")
         .set("pieces", new String[][]{{"0.0", "773.0", "7.252413E10+1872882.0*T^1-71106.44*T^2+52.7109*T^3"}});
    model.component("relay").material("mat12").propertyGroup("KG").set("K", "");
    model.component("relay").material("mat12").propertyGroup("KG").set("G", "");
    model.component("relay").material("mat12").propertyGroup("KG").set("K", "kappa(T[1/K])[Pa]");
    model.component("relay").material("mat12").propertyGroup("KG").set("G", "mu(T[1/K])[Pa]");
    model.component("relay").material("mat12").propertyGroup("KG").addInput("temperature");
    model.component("relay").material("mat13").label("Substrate Landing Pads - Tungsten");
    model.component("relay").material("mat13").set("family", "custom");
    model.component("relay").material("mat13").set("specular", "custom");
    model.component("relay").material("mat13").set("customspecular", new double[]{0.7843137254901961, 1, 1});
    model.component("relay").material("mat13").set("diffuse", "custom");
    model.component("relay").material("mat13")
         .set("customdiffuse", new double[]{0.7843137254901961, 0.7843137254901961, 0.7843137254901961});
    model.component("relay").material("mat13").set("ambient", "custom");
    model.component("relay").material("mat13")
         .set("customambient", new double[]{0.7843137254901961, 0.7843137254901961, 0.7843137254901961});
    model.component("relay").material("mat13").set("noise", true);
    model.component("relay").material("mat13").set("noisefreq", 1);
    model.component("relay").material("mat13").set("lighting", "cooktorrance");
    model.component("relay").material("mat13").set("fresnel", 0.9);
    model.component("relay").material("mat13").propertyGroup("def")
         .set("electricconductivity", new String[]{"20.0e6[S/m]", "0", "0", "0", "20.0e6[S/m]", "0", "0", "0", "20.0e6[S/m]"});

    return model;
  }

  public static Model run4(Model model) {
//     model.component("relay").material("mat13").propertyGroup("def").descr("electricconductivity_symmetry", "");
    model.component("relay").material("mat13").propertyGroup("def")
         .set("thermalexpansioncoefficient", new String[]{"4.5e-6[1/K]", "0", "0", "0", "4.5e-6[1/K]", "0", "0", "0", "4.5e-6[1/K]"});
//     model.component("relay").material("mat13").propertyGroup("def").descr("thermalexpansioncoefficient_symmetry", "");
    model.component("relay").material("mat13").propertyGroup("def").set("heatcapacity", "132[J/(kg*K)]");
//     model.component("relay").material("mat13").propertyGroup("def").descr("heatcapacity_symmetry", "");
    model.component("relay").material("mat13").propertyGroup("def").set("density", "19350[kg/m^3]");
//     model.component("relay").material("mat13").propertyGroup("def").descr("density_symmetry", "");
    model.component("relay").material("mat13").propertyGroup("def")
         .set("thermalconductivity", new String[]{"174[W/(m*K)]", "0", "0", "0", "174[W/(m*K)]", "0", "0", "0", "174[W/(m*K)]"});
//     model.component("relay").material("mat13").propertyGroup("def").descr("thermalconductivity_symmetry", "");
    model.component("relay").material("mat13").propertyGroup("def")
         .set("relpermittivity", new String[]{"1", "0", "0", "0", "1", "0", "0", "0", "1"});
//     model.component("relay").material("mat13").propertyGroup("def").set("relpermittivity_symmetry", "0");
    model.component("relay").material("mat13").propertyGroup("Enu").set("youngsmodulus", "411e9[Pa]");
//     model.component("relay").material("mat13").propertyGroup("Enu").descr("youngsmodulus_symmetry", "");
    model.component("relay").material("mat13").propertyGroup("Enu").set("poissonsratio", "0.28");
//     model.component("relay").material("mat13").propertyGroup("Enu").descr("poissonsratio_symmetry", "");
    model.component("relay").material("mat14").label("Substrate Dielectric - SiO2");
    model.component("relay").material("mat14").propertyGroup("def")
         .set("electricconductivity", new String[]{"0[S/m]", "0", "0", "0", "0[S/m]", "0", "0", "0", "0[S/m]"});
//     model.component("relay").material("mat14").propertyGroup("def").descr("electricconductivity_symmetry", "");
    model.component("relay").material("mat14").propertyGroup("def")
         .set("thermalexpansioncoefficient", new String[]{"0.5e-6[1/K]", "0", "0", "0", "0.5e-6[1/K]", "0", "0", "0", "0.5e-6[1/K]"});
//     model.component("relay").material("mat14").propertyGroup("def").descr("thermalexpansioncoefficient_symmetry", "");
    model.component("relay").material("mat14").propertyGroup("def").set("heatcapacity", "730[J/(kg*K)]");
//     model.component("relay").material("mat14").propertyGroup("def").descr("heatcapacity_symmetry", "");
    model.component("relay").material("mat14").propertyGroup("def")
         .set("relpermittivity", new String[]{"4.2", "0", "0", "0", "4.2", "0", "0", "0", "4.2"});
//     model.component("relay").material("mat14").propertyGroup("def").descr("relpermittivity_symmetry", "");
    model.component("relay").material("mat14").propertyGroup("def").set("density", "2200[kg/m^3]");
//     model.component("relay").material("mat14").propertyGroup("def").descr("density_symmetry", "");
    model.component("relay").material("mat14").propertyGroup("def")
         .set("thermalconductivity", new String[]{"1.4[W/(m*K)]", "0", "0", "0", "1.4[W/(m*K)]", "0", "0", "0", "1.4[W/(m*K)]"});
//     model.component("relay").material("mat14").propertyGroup("def").descr("thermalconductivity_symmetry", "");
    model.component("relay").material("mat14").propertyGroup("Enu").set("youngsmodulus", "70e9[Pa]");
//     model.component("relay").material("mat14").propertyGroup("Enu").descr("youngsmodulus_symmetry", "");
    model.component("relay").material("mat14").propertyGroup("Enu").set("poissonsratio", "0.17");
//     model.component("relay").material("mat14").propertyGroup("Enu").descr("poissonsratio_symmetry", "");

    model.component("relay").coordSystem("sys1").label("Boundary System");

    model.component("relay").common("free3").label("Deforming Domain");
    model.component("relay").common("free3").set("smoothingType", "hyperelastic");
    model.component("relay").common("sym1").label("Symmetry/Roller");

    model.component("relay").physics("es").prop("ShapeProperty").set("order_electricpotential", 1);
    model.component("relay").physics("es").feature("ccn1").set("materialType", "solid");
    model.component("relay").physics("es").feature("ccn1").label("Charge Conservation, Solid");
    model.component("relay").physics("es").feature("zc1").label("Zero Charge");
    model.component("relay").physics("es").feature("init1").label("Initial Values");
    model.component("relay").physics("es").feature("term6").set("TerminalType", "Voltage");
    model.component("relay").physics("es").feature("term6").set("V0", "tri1(t[1/s])*V_gate");
    model.component("relay").physics("es").feature("term6").label("Electric Potential Gate Sweep");
    model.component("relay").physics("es").feature("term61").set("TerminalName", "3");
    model.component("relay").physics("es").feature("term61").set("TerminalType", "Voltage");
    model.component("relay").physics("es").feature("term61").set("V0", "rect1(t[1/s])*V_gate");
    model.component("relay").physics("es").feature("term61").label("Electric Potential Gate Step Down");
    model.component("relay").physics("es").feature("term7").set("TerminalName", "2");
    model.component("relay").physics("es").feature("term7").set("TerminalType", "Voltage");
    model.component("relay").physics("es").feature("term7").set("V0", 0);
    model.component("relay").physics("es").feature("term7").label("Ground");
    model.component("relay").physics("es").feature("ccn2").label("Charge Conservation, Nonsolid");
    model.component("relay").physics("es").feature("term41").set("TerminalName", "11");
    model.component("relay").physics("es").feature("term41").label("Floating Channel 1");
    model.component("relay").physics("es").feature("term42").set("TerminalName", "12");
    model.component("relay").physics("es").feature("term42").label("Floating Channel 2");
    model.component("relay").physics("es").feature("term43").set("TerminalName", "13");
    model.component("relay").physics("es").feature("term43").label("Floating Channel 3");
    model.component("relay").physics("es").feature("term44").set("TerminalName", "14");
    model.component("relay").physics("es").feature("term44").label("Floating Channel 4");
    model.component("relay").physics("es").feature("term45").set("TerminalName", "15");
    model.component("relay").physics("es").feature("term45").label("Floating Channel 5");
    model.component("relay").physics("es").feature("term46").set("TerminalName", "16");
    model.component("relay").physics("es").feature("term46").label("Floating Channel 6");
    model.component("relay").physics("es").feature("term47").set("TerminalName", "17");
    model.component("relay").physics("es").feature("term47").label("Floating Channel 7");
    model.component("relay").physics("es").feature("term48").set("TerminalName", "18");
    model.component("relay").physics("es").feature("term48").label("Floating Channel 8");
    model.component("relay").physics("es").feature("term37").set("TerminalName", "21");
    model.component("relay").physics("es").feature("term37").label("Floating Landing Pad 1");
    model.component("relay").physics("es").feature("term38").set("TerminalName", "22");
    model.component("relay").physics("es").feature("term38").label("Floating Landing Pad 2");
    model.component("relay").physics("es").feature("term39").set("TerminalName", "23");
    model.component("relay").physics("es").feature("term39").label("Floating Landing Pad 3");
    model.component("relay").physics("es").feature("term40").set("TerminalName", "24");
    model.component("relay").physics("es").feature("term40").label("Floating Landing Pad 4");
    model.component("relay").physics("es").feature("term49").set("TerminalName", "25");
    model.component("relay").physics("es").feature("term49").label("Floating Landing Pad 5");
    model.component("relay").physics("es").feature("term50").set("TerminalName", "26");
    model.component("relay").physics("es").feature("term50").label("Floating Landing Pad 6");
    model.component("relay").physics("es").feature("term51").set("TerminalName", "27");
    model.component("relay").physics("es").feature("term51").label("Floating Landing Pad 7");
    model.component("relay").physics("es").feature("term52").set("TerminalName", "28");
    model.component("relay").physics("es").feature("term52").label("Floating Landing Pad 8");
    model.component("relay").physics("es").feature("term53").set("TerminalName", "29");
    model.component("relay").physics("es").feature("term53").label("Floating Landing Pad 9");
    model.component("relay").physics("es").feature("term54").set("TerminalName", "30");
    model.component("relay").physics("es").feature("term54").label("Floating Landing Pad 10");
    model.component("relay").physics("es").feature("term55").set("TerminalName", "31");
    model.component("relay").physics("es").feature("term55").label("Floating Landing Pad 11");
    model.component("relay").physics("es").feature("term56").set("TerminalName", "32");
    model.component("relay").physics("es").feature("term56").label("Floating Landing Pad 12");
    model.component("relay").physics("es").feature("term57").set("TerminalName", "33");
    model.component("relay").physics("es").feature("term57").label("Floating Landing Pad 13");
    model.component("relay").physics("es").feature("term58").set("TerminalName", "34");
    model.component("relay").physics("es").feature("term58").label("Floating Landing Pad 14");
    model.component("relay").physics("es").feature("term59").set("TerminalName", "35");
    model.component("relay").physics("es").feature("term59").label("Floating Landing Pad 15");
    model.component("relay").physics("es").feature("term60").set("TerminalName", "36");
    model.component("relay").physics("es").feature("term60").label("Floating Landing Pad 16");
    model.component("relay").physics("es2").label("Parasitic Extraction");
    model.component("relay").physics("es2").prop("PortSweepSettings").set("PortParamName", "PortName");
    model.component("relay").physics("es2").feature("ccn1").set("materialType", "solid");
    model.component("relay").physics("es2").feature("ccn1").label("Charge Conservation, Solid");
    model.component("relay").physics("es2").feature("zc1").label("Zero Charge");
    model.component("relay").physics("es2").feature("init1").label("Initial Values");
    model.component("relay").physics("es2").feature("gnd1").label("Enclosure Ground");
    model.component("relay").physics("es2").feature("term6").label("Gate");
    model.component("relay").physics("es2").feature("term7").set("V0", 0);
    model.component("relay").physics("es2").feature("term7").label("Body");
    model.component("relay").physics("es2").feature("ccn2").label("Charge Conservation, Nonsolid");
    model.component("relay").physics("es2").feature("term41").set("V0", 0);
    model.component("relay").physics("es2").feature("term41").label("Floating Channel 1");
    model.component("relay").physics("es2").feature("term42").set("V0", 0);
    model.component("relay").physics("es2").feature("term42").label("Floating Channel 2");
    model.component("relay").physics("es2").feature("term43").set("V0", 0);
    model.component("relay").physics("es2").feature("term43").label("Floating Channel 3");
    model.component("relay").physics("es2").feature("term44").set("V0", 0);
    model.component("relay").physics("es2").feature("term44").label("Floating Channel 4");
    model.component("relay").physics("es2").feature("term45").set("V0", 0);
    model.component("relay").physics("es2").feature("term45").label("Floating Channel 5");
    model.component("relay").physics("es2").feature("term46").set("V0", 0);
    model.component("relay").physics("es2").feature("term46").label("Floating Channel 6");
    model.component("relay").physics("es2").feature("term47").set("V0", 0);
    model.component("relay").physics("es2").feature("term47").label("Floating Channel 7");
    model.component("relay").physics("es2").feature("term48").set("V0", 0);
    model.component("relay").physics("es2").feature("term48").label("Floating Channel 8");
    model.component("relay").physics("es2").feature("term37").set("V0", 0);
    model.component("relay").physics("es2").feature("term37").label("Floating Landing Pad 1");
    model.component("relay").physics("es2").feature("term38").set("V0", 0);
    model.component("relay").physics("es2").feature("term38").label("Floating Landing Pad 2");
    model.component("relay").physics("es2").feature("term39").set("V0", 0);
    model.component("relay").physics("es2").feature("term39").label("Floating Landing Pad 3");
    model.component("relay").physics("es2").feature("term40").set("V0", 0);
    model.component("relay").physics("es2").feature("term40").label("Floating Landing Pad 4");
    model.component("relay").physics("es2").feature("term49").set("V0", 0);
    model.component("relay").physics("es2").feature("term49").label("Floating Landing Pad 5");
    model.component("relay").physics("es2").feature("term50").set("V0", 0);
    model.component("relay").physics("es2").feature("term50").label("Floating Landing Pad 6");
    model.component("relay").physics("es2").feature("term51").set("V0", 0);
    model.component("relay").physics("es2").feature("term51").label("Floating Landing Pad 7");
    model.component("relay").physics("es2").feature("term52").set("V0", 0);
    model.component("relay").physics("es2").feature("term52").label("Floating Landing Pad 8");
    model.component("relay").physics("es2").feature("term53").set("V0", 0);
    model.component("relay").physics("es2").feature("term53").label("Floating Landing Pad 9");
    model.component("relay").physics("es2").feature("term54").set("V0", 0);
    model.component("relay").physics("es2").feature("term54").label("Floating Landing Pad 10");
    model.component("relay").physics("es2").feature("term55").set("V0", 0);
    model.component("relay").physics("es2").feature("term55").label("Floating Landing Pad 11");
    model.component("relay").physics("es2").feature("term56").set("V0", 0);
    model.component("relay").physics("es2").feature("term56").label("Floating Landing Pad 12");
    model.component("relay").physics("es2").feature("term57").set("V0", 0);
    model.component("relay").physics("es2").feature("term57").label("Floating Landing Pad 13");
    model.component("relay").physics("es2").feature("term58").set("V0", 0);
    model.component("relay").physics("es2").feature("term58").label("Floating Landing Pad 14");
    model.component("relay").physics("es2").feature("term59").set("V0", 0);
    model.component("relay").physics("es2").feature("term59").label("Floating Landing Pad 15");
    model.component("relay").physics("es2").feature("term60").set("V0", 0);
    model.component("relay").physics("es2").feature("term60").label("Floating Landing Pad 16");
    model.component("relay").physics("solid").label("Solid Mechanics Quasi-Static");
    model.component("relay").physics("solid").prop("StructuralTransientBehavior")
         .set("StructuralTransientBehavior", "Quasistatic");
    model.component("relay").physics("solid").feature("lemm1").label("Linear Elastic Material Relay");
    model.component("relay").physics("solid").feature("lemm1").feature("dmp1").set("alpha_dM", "3e7");
    model.component("relay").physics("solid").feature("lemm1").feature("dmp1").set("eta_s_mat", "userdef");
    model.component("relay").physics("solid").feature("lemm1").feature("dmp1").set("eta_s", 1);
    model.component("relay").physics("solid").feature("lemm1").feature("dmp1").label("Static Damping");
    model.component("relay").physics("solid").feature("free1").label("Free");
    model.component("relay").physics("solid").feature("init1").label("Initial Values");
    model.component("relay").physics("solid").feature("bndl1").set("LoadType", "TotalForce");
    model.component("relay").physics("solid").feature("bndl1").set("Ftot", new String[][]{{"0"}, {"0"}, {"-F_spr"}});
    model.component("relay").physics("solid").feature("bndl1")
         .set("FperArea", new String[][]{{"0"}, {"0"}, {"-1e-8"}});
    model.component("relay").physics("solid").feature("bndl1").label("Boundary Load Relay Plate");
    model.component("relay").physics("solid").feature("fix1").label("Fixed Constraint Substrate Components");
    model.component("relay").physics("solid").feature("bndl10")
         .set("FperArea", new String[][]{{"0"}, {"0"}, {"Pc_body"}});
    model.component("relay").physics("solid").feature("bndl10").label("Contact Pressure Body");
    model.component("relay").physics("solid").feature("bndl11")
         .set("FperArea", new String[][]{{"0"}, {"0"}, {"Pc_cont"}});
    model.component("relay").physics("solid").feature("bndl11").label("Contact Pressure Contact");
    model.component("relay").physics("solid2").label("Solid Mechanics Transient");
    model.component("relay").physics("solid2").prop("cref").set("cref", "solid.cp");
    model.component("relay").physics("solid2").feature("lemm1").label("Linear Elastic Material Relay");
    model.component("relay").physics("solid2").feature("lemm1").feature("dmp2").set("DampingType", "ViscousDamping");
    model.component("relay").physics("solid2").feature("lemm1").feature("dmp2").set("etab", "muB");
    model.component("relay").physics("solid2").feature("lemm1").feature("dmp2").set("etav", "mu");
    model.component("relay").physics("solid2").feature("lemm1").feature("dmp2").label("Viscous Fluid");
    model.component("relay").physics("solid2").feature("free1").label("Free");
    model.component("relay").physics("solid2").feature("init1").label("Initial Values");
    model.component("relay").physics("solid2").feature("fix1").label("Fixed Constraint Substrate Components");
    model.component("relay").physics("solid2").feature("bndl10")
         .set("FperArea", new String[][]{{"0"}, {"0"}, {"Pc_body2"}});
    model.component("relay").physics("solid2").feature("bndl10").label("Contact Pressure Body");
    model.component("relay").physics("solid2").feature("bndl11")
         .set("FperArea", new String[][]{{"0"}, {"0"}, {"Pc_cont2"}});
    model.component("relay").physics("solid2").feature("bndl11").label("Contact Pressure Contact");

    model.component("relay").multiphysics("eme2").set("Solid_physics", "solid2");

    model.component("relay").mesh("mesh1").label("Compact Relay Mesh");
    model.component("relay").mesh("mesh1").feature("size").set("custom", "on");
    model.component("relay").mesh("mesh1").feature("size").set("hmin", 0.002);
    model.component("relay").mesh("mesh1").feature("swe1").active(false);
    model.component("relay").mesh("mesh1").feature("swe1").label("Swept");
    model.component("relay").mesh("mesh1").feature("swe2").set("facemethod", "tri");
    model.component("relay").mesh("mesh1").feature("ftet1").label("Free Tetrahedral");
    model.component("relay").mesh("mesh1").feature("ftet1").set("optlevel", "high");
    model.component("relay").mesh("mesh1").feature("ftet1").set("optcurved", true);
    model.component("relay").mesh("mesh1").run();
    model.component("relay").mesh("mesh3").label("Full Relay Mesh");
    model.component("relay").mesh("mesh3").feature("size").set("custom", "on");
    model.component("relay").mesh("mesh3").feature("size").set("hmin", 0.002);
    model.component("relay").mesh("mesh3").feature("ftet1").label("Free Tetrahedral");
    model.component("relay").mesh("mesh3").feature("ftet1").set("optlevel", "high");
    model.component("relay").mesh("mesh3").feature("ftet1").set("optcurved", true);
    model.component("relay").mesh("mesh3").run();

    model.study().create("std1");
    model.study("std1").create("stat", "Stationary");
    model.study("std1").feature("stat").set("useadvanceddisable", true);
    model.study("std1").feature("stat")
         .set("disabledphysics", new String[]{"es2", "es", "solid/lemm1/dmp1", "solid2", "solid/bndl10", "solid/bndl11"});
    model.study("std1").feature("stat").set("disabledcoupling", new String[]{"eme1", "eme2"});
//     model.study("std1").feature("stat")
//          .set("activate", new String[]{"es", "off", "es2", "off", "solid", "on", "solid2", "off", "frame:spatial1", "off", 
//          "frame:material1", "off"});
    model.study("std1").feature("stat").set("activateCoupling", new String[]{"eme1", "off", "eme2", "off"});
    model.study().create("std2");
    model.study("std2").create("param", "Parametric");
    model.study("std2").create("eig", "Eigenfrequency");
    model.study("std2").feature("eig").set("useadvanceddisable", true);
    model.study("std2").feature("eig")
         .set("disabledphysics", new String[]{"solid/bndl1", "es", "es2", "solid/bndl10", "solid/bndl11", "solid/lemm1/dmp1", "solid2"});
    model.study("std2").feature("eig").set("disableFrameControl", new String[]{"frame:material1", "frame:spatial1"});
    model.study("std2").feature("eig").set("disabledcoupling", new String[]{"eme1", "eme2"});
//     model.study("std2").feature("eig")
//          .set("activate", new String[]{"es", "off", "es2", "off", "solid", "on", "solid2", "off", "frame:spatial1", "off", 
//          "frame:material1", "off"});
    model.study("std2").feature("eig").set("activateCoupling", new String[]{"eme1", "off", "eme2", "off"});
    model.study().create("std4");
    model.study("std4").create("matsw", "MaterialSweep");
    model.study("std4").create("stssw", "StationarySourceSweep");
    model.study("std4").feature("stssw").set("useadvanceddisable", true);
    model.study("std4").feature("stssw").set("disabledphysics", new String[]{"solid2"});
    model.study("std4").feature("stssw").set("disabledcoupling", new String[]{"eme2", "eme1"});
//     model.study("std4").feature("stssw")
//          .set("activate", new String[]{"es", "off", "es2", "on", "solid", "off", "solid2", "off", "frame:spatial1", "off", 
//          "frame:material1", "on"});
    model.study("std4").feature("stssw").set("activateCoupling", new String[]{"eme1", "off", "eme2", "off"});
    model.study().create("std5");
    model.study("std5").create("matsw", "MaterialSweep");
    model.study("std5").create("time", "Transient");
    model.study("std5").feature("time").set("useadvanceddisable", true);
    model.study("std5").feature("time")
         .set("disabledphysics", new String[]{"solid/bndl1", "es2", "es/term61", "solid2"});
    model.study("std5").feature("time").set("disabledcoupling", new String[]{"eme2"});
//     model.study("std5").feature("time")
//          .set("activate", new String[]{"es", "on", "es2", "off", "solid", "on", "solid2", "off", "frame:spatial1", "on", 
//          "frame:material1", "on"});
    model.study("std5").feature("time").set("activateCoupling", new String[]{"eme1", "on", "eme2", "off"});
    model.study().create("std7");
    model.study("std7").create("param", "Parametric");
    model.study("std7").create("time", "Transient");
    model.study("std7").feature("time").set("useadvanceddisable", true);
    model.study("std7").feature("time")
         .set("disabledphysics", new String[]{"es2", "solid/lemm1/dmp1", "es/term6", "solid/bndl1", "solid", "solid2/lemm1/dmp2"});
    model.study("std7").feature("time").set("disabledcoupling", new String[]{"eme1"});
//     model.study("std7").feature("time")
//          .set("activate", new String[]{"es", "on", "es2", "off", "solid", "off", "solid2", "on", "frame:spatial1", "on", 
//          "frame:material1", "on"});

    model.sol().create("sol1");
    model.sol("sol1").study("std1");
    model.sol("sol1").attach("std1");
    model.sol("sol1").create("st1", "StudyStep");
    model.sol("sol1").create("v1", "Variables");
    model.sol("sol1").create("s1", "Stationary");
    model.sol("sol1").feature("s1").create("fc1", "FullyCoupled");
    model.sol("sol1").feature("s1").create("d1", "Direct");
    model.sol("sol1").feature("s1").create("i1", "Iterative");
    model.sol("sol1").feature("s1").feature("i1").create("mg1", "Multigrid");
    model.sol("sol1").feature("s1").feature("i1").feature("mg1").feature("pr").create("so1", "SOR");
    model.sol("sol1").feature("s1").feature("i1").feature("mg1").feature("po").create("so1", "SOR");
    model.sol("sol1").feature("s1").feature().remove("fcDef");
    model.sol().create("sol2");
    model.sol("sol2").study("std2");
    model.sol("sol2").attach("std2");
    model.sol("sol2").create("st1", "StudyStep");
    model.sol("sol2").create("v1", "Variables");
    model.sol("sol2").create("e1", "Eigenvalue");
    model.sol().create("sol6");
    model.sol("sol6").study("std4");
    model.sol("sol6").attach("std4");
    model.sol("sol6").create("st1", "StudyStep");
    model.sol("sol6").create("v1", "Variables");
    model.sol("sol6").create("s1", "Stationary");
    model.sol("sol6").feature("s1").create("p1", "Parametric");
    model.sol("sol6").feature("s1").create("fc1", "FullyCoupled");
    model.sol("sol6").feature("s1").create("i1", "Iterative");
    model.sol("sol6").feature("s1").feature("i1").create("mg1", "Multigrid");
    model.sol("sol6").feature("s1").feature().remove("fcDef");
    model.sol().create("sol7");
    model.sol("sol7").study("std5");
    model.sol("sol7").attach("std5");
    model.sol("sol7").create("st1", "StudyStep");
    model.sol("sol7").create("v1", "Variables");
    model.sol("sol7").create("t1", "Time");
    model.sol("sol7").feature("t1").create("se1", "Segregated");
    model.sol("sol7").feature("t1").create("d1", "Direct");
    model.sol("sol7").feature("t1").create("i1", "Iterative");
    model.sol("sol7").feature("t1").create("fc1", "FullyCoupled");
    model.sol("sol7").feature("t1").feature("se1").create("ss1", "SegregatedStep");
    model.sol("sol7").feature("t1").feature("se1").create("ss2", "SegregatedStep");
    model.sol("sol7").feature("t1").feature("se1").create("ss3", "SegregatedStep");
    model.sol("sol7").feature("t1").feature("se1").create("material11", "SegregatedStep");
    model.sol("sol7").feature("t1").feature("se1").create("ec1", "SegregatedStep");
    model.sol("sol7").feature("t1").feature("se1").create("es1", "SegregatedStep");
    model.sol("sol7").feature("t1").feature("se1").create("solid21", "SegregatedStep");
    model.sol("sol7").feature("t1").feature("se1").create("es31", "SegregatedStep");
    model.sol("sol7").feature("t1").feature("se1").create("ev1", "SegregatedStep");
    model.sol("sol7").feature("t1").feature("se1").create("solid22", "SegregatedStep");
    model.sol("sol7").feature("t1").feature("se1").feature().remove("ssDef");
    model.sol("sol7").feature("t1").feature("i1").create("mg1", "Multigrid");
    model.sol("sol7").feature("t1").feature("i1").create("dp1", "DirectPreconditioner");
    model.sol("sol7").feature("t1").feature("i1").feature("mg1").set("hybridization", "multi");
    model.sol("sol7").feature("t1").feature("i1").feature("mg1").feature("pr").create("so1", "SOR");
    model.sol("sol7").feature("t1").feature("i1").feature("mg1").feature("po").create("so1", "SOR");
    model.sol("sol7").feature("t1").feature("i1").feature("dp1").set("hybridization", "multi");
    model.sol("sol7").feature("t1").feature().remove("fcDef");
    model.sol().create("sol8");
    model.sol("sol8").study("std7");
    model.sol("sol8").attach("std7");
    model.sol("sol8").create("st1", "StudyStep");
    model.sol("sol8").create("v1", "Variables");
    model.sol("sol8").create("t1", "Time");
    model.sol("sol8").feature("t1").create("se1", "Segregated");
    model.sol("sol8").feature("t1").create("d1", "Direct");
    model.sol("sol8").feature("t1").create("i1", "Iterative");
    model.sol("sol8").feature("t1").create("fc1", "FullyCoupled");
    model.sol("sol8").feature("t1").create("arDef", "AutoRemesh");
    model.sol("sol8").feature("t1").feature("se1").create("ss1", "SegregatedStep");
    model.sol("sol8").feature("t1").feature("se1").create("ss2", "SegregatedStep");
    model.sol("sol8").feature("t1").feature("se1").create("ss3", "SegregatedStep");
    model.sol("sol8").feature("t1").feature("se1").create("solid21", "SegregatedStep");
    model.sol("sol8").feature("t1").feature("se1").create("solid22", "SegregatedStep");
    model.sol("sol8").feature("t1").feature("se1").feature().remove("ssDef");
    model.sol("sol8").feature("t1").feature("i1").create("mg1", "Multigrid");
    model.sol("sol8").feature("t1").feature("i1").create("dp1", "DirectPreconditioner");
    model.sol("sol8").feature("t1").feature("i1").feature("mg1").set("hybridization", "multi");
    model.sol("sol8").feature("t1").feature("i1").feature("mg1").feature("pr").create("so1", "SOR");
    model.sol("sol8").feature("t1").feature("i1").feature("mg1").feature("po").create("so1", "SOR");
    model.sol("sol8").feature("t1").feature("i1").feature("dp1").set("hybridization", "multi");
    model.sol("sol8").feature("t1").feature().remove("fcDef");
    model.sol().create("sol10");
    model.sol("sol10").study("std2");
    model.sol("sol10").label("Parametric Solutions 2");
    model.sol().create("sol14");
    model.sol("sol14").study("std4");
    model.sol("sol14").label("Parametric Solutions 3");
    model.sol().create("sol17");
    model.sol("sol17").study("std4");
    model.sol("sol17").label("Parametric Solutions 4");
    model.sol().create("sol20");
    model.sol("sol20").study("std5");
    model.sol("sol20").label("Parametric Solutions 5");

    model.batch().create("p2", "Parametric");
    model.batch().create("pm1", "MaterialSweep");
    model.batch("p2").create("so1", "Solutionseq");
    model.batch("pm1").create("so1", "Solutionseq");
    model.batch("p2").study("std2");
    model.batch("pm1").study("std4");

    model.result().dataset().create("cpl1", "CutPlane");
    model.result().dataset().create("cpl2", "CutPlane");
    model.result().dataset().create("cpl3", "CutPlane");
    model.result().dataset().create("cpl4", "CutPlane");
    model.result().dataset().create("dset11", "Solution");
    model.result().dataset().create("dset13", "Solution");
    model.result().dataset().create("dset14", "Solution");
    model.result().dataset().create("an1_ds1", "Grid1D");
    model.result().dataset("dset7").set("solution", "sol6");
    model.result().dataset("dset8").set("solution", "sol7");
    model.result().dataset("cpl1").set("data", "dset8");
    model.result().dataset("cpl2").set("data", "dset8");
    model.result().dataset("cpl4").set("data", "dset8");
    model.result().dataset("dset9").set("solution", "sol8");
    model.result().dataset("dset11").set("solution", "sol10");
    model.result().dataset("dset13").set("solution", "sol17");
    model.result().dataset("dset14").set("solution", "sol20");
    model.result().dataset("an1_ds1").set("data", "none");
    model.result().dataset().remove("dset3");
    model.result().dataset().remove("dset4");
    model.result().dataset().remove("dset5");
    model.result().dataset().remove("dset6");
    model.result().create("pg5", "PlotGroup3D");
    model.result().create("pg6", "PlotGroup3D");
    model.result().create("pg7", "PlotGroup3D");
    model.result().create("pg8", "PlotGroup3D");
    model.result().create("pg9", "PlotGroup3D");
    model.result().create("pg10", "PlotGroup3D");
    model.result().create("pg31", "PlotGroup3D");
    model.result().create("pg2", "PlotGroup3D");
    model.result().create("pg30", "PlotGroup3D");
    model.result().create("pg36", "PlotGroup2D");
    model.result().create("pg1", "PlotGroup3D");
    model.result().create("pg4", "PlotGroup3D");
    model.result().create("pg23", "PlotGroup2D");
    model.result().create("pg22", "PlotGroup1D");
    model.result().create("pg25", "PlotGroup1D");
    model.result().create("pg26", "PlotGroup1D");
    model.result().create("pg27", "PlotGroup2D");
    model.result().create("pg37", "PlotGroup2D");
    model.result().create("pg32", "PlotGroup1D");
    model.result().create("pg34", "PlotGroup3D");
    model.result().create("pg35", "PlotGroup1D");
    model.result("pg5").set("data", "dset2");
    model.result("pg5").selection().geom("geom1", 3);

    return model;
  }

  public static Model run5(Model model) {
    model.result("pg5").selection()
         .set(3, 4, 5, 7, 8, 10, 11, 13, 14, 19, 31, 32, 36, 44, 45, 76, 77, 78, 81, 82, 83, 85, 86, 88, 89);
    model.result("pg5").create("surf1", "Surface");
    model.result("pg5").create("mesh1", "Mesh");
    model.result("pg5").feature("surf1").set("expr", "solid.disp");
    model.result("pg5").feature("surf1").create("def", "Deform");
    model.result("pg5").feature("mesh1").create("def1", "Deform");
    model.result("pg6").set("data", "dset2");
    model.result("pg6").selection().geom("geom1", 3);
    model.result("pg6").selection()
         .set(3, 4, 5, 7, 8, 10, 11, 13, 14, 19, 31, 32, 36, 44, 45, 76, 77, 78, 81, 82, 83, 85, 86, 88, 89);
    model.result("pg6").create("surf1", "Surface");
    model.result("pg6").create("mesh1", "Mesh");
    model.result("pg6").feature("surf1").set("expr", "solid.disp");
    model.result("pg6").feature("surf1").create("def", "Deform");
    model.result("pg6").feature("mesh1").create("def1", "Deform");
    model.result("pg7").set("data", "dset2");
    model.result("pg7").selection().geom("geom1", 3);
    model.result("pg7").selection()
         .set(3, 4, 5, 7, 8, 10, 11, 13, 14, 19, 31, 32, 36, 44, 45, 76, 77, 78, 81, 82, 83, 85, 86, 88, 89);
    model.result("pg7").create("surf1", "Surface");
    model.result("pg7").create("mesh1", "Mesh");
    model.result("pg7").feature("surf1").set("expr", "solid.disp");
    model.result("pg7").feature("surf1").create("def", "Deform");
    model.result("pg7").feature("mesh1").create("def1", "Deform");
    model.result("pg8").set("data", "dset2");
    model.result("pg8").selection().geom("geom1", 3);
    model.result("pg8").selection()
         .set(3, 4, 5, 7, 8, 10, 11, 13, 14, 19, 31, 32, 36, 44, 45, 76, 77, 78, 81, 82, 83, 85, 86, 88, 89);
    model.result("pg8").create("surf1", "Surface");
    model.result("pg8").create("mesh1", "Mesh");
    model.result("pg8").feature("surf1").set("expr", "solid.disp");
    model.result("pg8").feature("surf1").create("def", "Deform");
    model.result("pg8").feature("mesh1").create("def1", "Deform");
    model.result("pg9").set("data", "dset2");
    model.result("pg9").selection().geom("geom1", 3);
    model.result("pg9").selection()
         .set(3, 4, 5, 7, 8, 10, 11, 13, 14, 19, 31, 32, 36, 44, 45, 76, 77, 78, 81, 82, 83, 85, 86, 88, 89);
    model.result("pg9").create("surf1", "Surface");
    model.result("pg9").create("mesh1", "Mesh");
    model.result("pg9").feature("surf1").set("expr", "solid.disp");
    model.result("pg9").feature("surf1").create("def", "Deform");
    model.result("pg9").feature("mesh1").create("def1", "Deform");
    model.result("pg10").set("data", "dset2");
    model.result("pg10").selection().geom("geom1", 3);
    model.result("pg10").selection()
         .set(3, 4, 5, 7, 8, 10, 11, 13, 14, 19, 31, 32, 36, 44, 45, 76, 77, 78, 81, 82, 83, 85, 86, 88, 89);
    model.result("pg10").create("surf1", "Surface");
    model.result("pg10").create("mesh1", "Mesh");
    model.result("pg10").feature("surf1").set("expr", "solid.disp");
    model.result("pg10").feature("surf1").create("def", "Deform");
    model.result("pg10").feature("mesh1").create("def1", "Deform");
    model.result("pg31").set("data", "dset13");
    model.result("pg31").create("vol1", "Volume");
    model.result("pg31").feature("vol1").set("expr", "V2");
    model.result("pg2").selection().geom("geom1", 3);
    model.result("pg2").selection().set(3, 4, 5, 7, 8, 10, 11, 13, 14, 87, 89, 90, 92, 93);
    model.result("pg2").create("arws1", "ArrowSurface");
    model.result("pg30").selection().named("uni1");
    model.result("pg30").create("vol1", "Volume");
    model.result("pg30").feature("vol1").set("expr", "solid.disp");
    model.result("pg30").feature("vol1").create("def1", "Deform");
    model.result("pg36").create("con1", "Contour");
    model.result("pg36").feature("con1").set("expr", "solid.disp");
    model.result("pg1").selection().geom("geom1", 3);
    model.result("pg1").selection().set(3, 4, 5, 7, 8, 10, 11, 13, 14, 87, 89, 90, 92, 93);
    model.result("pg1").create("surf1", "Surface");
    model.result("pg1").create("mesh1", "Mesh");
    model.result("pg1").feature("surf1").set("expr", "solid.mises");
    model.result("pg1").feature("surf1").create("def", "Deform");
    model.result("pg1").feature("mesh1").create("def1", "Deform");
    model.result("pg4").selection().geom("geom1", 3);
    model.result("pg4").selection().set(3, 4, 5, 7, 8, 10, 11, 13, 14, 87, 89, 90, 92, 93);
    model.result("pg4").create("surf1", "Surface");
    model.result("pg4").create("mesh1", "Mesh");
    model.result("pg4").feature("surf1").set("expr", "solid.evol");
    model.result("pg4").feature("surf1").create("def", "Deform");
    model.result("pg4").feature("mesh1").create("def1", "Deform");
    model.result("pg23").create("surf1", "Surface");
    model.result("pg22").set("data", "dset14");
    model.result("pg22").create("ptgr1", "PointGraph");
    model.result("pg22").feature("ptgr1").set("data", "dset8");
    model.result("pg22").feature("ptgr1").set("expr", "solid.disp");
    model.result("pg25").set("data", "dset14");
    model.result("pg25").create("ptgr1", "PointGraph");
    model.result("pg25").feature("ptgr1").selection().set(457);
    model.result("pg25").feature("ptgr1").set("expr", "solid.disp");
    model.result("pg26").set("data", "dset14");
    model.result("pg26").create("ptgr1", "PointGraph");
    model.result("pg26").feature("ptgr1").selection().set(457);
    model.result("pg26").feature("ptgr1").set("expr", "d(solid.disp,TIME)");
    model.result("pg27").create("surf1", "Surface");
    model.result("pg27").feature("surf1").set("expr", "Pc_cont");
    model.result("pg37").create("con1", "Contour");
    model.result("pg37").feature("con1").set("expr", "solid.disp");
    model.result("pg32").create("plot1", "LineGraph");
    model.result("pg32").feature("plot1").set("xdata", "expr");
    model.result("pg32").feature("plot1").set("expr", "relay.an1(x)");
    model.result("pg34").set("data", "dset9");
    model.result("pg34").create("surf1", "Surface");
    model.result("pg34").feature("surf1").set("expr", "solid2.disp");
    model.result("pg34").feature("surf1").create("def1", "Deform");
    model.result("pg35").set("data", "dset9");
    model.result("pg35").create("ptgr1", "PointGraph");
    model.result("pg35").feature("ptgr1").set("data", "dset9");
    model.result("pg35").feature("ptgr1").set("expr", "solid2.disp");
    model.result().export().create("anim2", "Animation");
    model.result().export().create("anim3", "Animation");
    model.result().export().create("anim4", "Animation");
    model.result().export().create("anim5", "Animation");
    model.result().export().create("anim6", "Animation");
    model.result().export().create("anim7", "Animation");
    model.result().export().create("anim8", "Animation");
    model.result().export().create("anim9", "Animation");
    model.result().export().create("anim10", "Animation");

    model.nodeGroup().create("grp15", "Results");
    model.nodeGroup("grp15").set("type", "plotgroup");
    model.nodeGroup("grp15").placeAfter(null);
    model.nodeGroup().create("grp22", "Results");
    model.nodeGroup("grp22").set("type", "plotgroup");
    model.nodeGroup().move("grp22", 1);
    model.nodeGroup("grp22").placeAfter(null);
    model.nodeGroup().create("dset1solidlgrp", "Results");
    model.nodeGroup("dset1solidlgrp").set("type", "plotgroup");
    model.nodeGroup().move("dset1solidlgrp", 2);
    model.nodeGroup("dset1solidlgrp").placeAfter(null);
    model.nodeGroup().create("grp14", "Results");
    model.nodeGroup("grp14").set("type", "plotgroup");
    model.nodeGroup().move("grp14", 3);
    model.nodeGroup("grp14").placeAfter(null);
    model.nodeGroup().create("grp21", "Results");
    model.nodeGroup("grp21").set("type", "plotgroup");
    model.nodeGroup().move("grp21", 4);
    model.nodeGroup("grp21").placeAfter(null);
    model.nodeGroup().create("grp24", "Results");
    model.nodeGroup("grp24").set("type", "plotgroup");
    model.nodeGroup().move("grp24", 5);
    model.nodeGroup("grp24").placeAfter(null);
    model.nodeGroup().create("grp4", "Definitions", "relay");
    model.nodeGroup("grp4").set("type", "selection");
    model.nodeGroup("grp4").placeAfter(null);
    model.nodeGroup().create("grp3", "Definitions", "relay");
    model.nodeGroup("grp3").set("type", "selection");
    model.nodeGroup().move("grp3", 7);
    model.nodeGroup("grp3").placeAfter(null);
    model.nodeGroup().create("grp19", "Definitions", "relay");
    model.nodeGroup("grp19").set("type", "selection");
    model.nodeGroup().move("grp19", 8);
    model.nodeGroup("grp19").placeAfter(null);
    model.nodeGroup().create("grp1", "Definitions", "relay");
    model.nodeGroup("grp1").set("type", "selection");
    model.nodeGroup().move("grp1", 9);
    model.nodeGroup("grp1").placeAfter(null);
    model.nodeGroup().create("grp6", "Definitions", "relay");
    model.nodeGroup("grp6").set("type", "selection");
    model.nodeGroup().move("grp6", 10);
    model.nodeGroup("grp6").placeAfter(null);
    model.nodeGroup().create("grp5", "Definitions", "relay");
    model.nodeGroup("grp5").set("type", "selection");
    model.nodeGroup().move("grp5", 11);
    model.nodeGroup("grp5").placeAfter(null);
    model.nodeGroup().create("grp2", "Definitions", "relay");
    model.nodeGroup("grp2").set("type", "selection");
    model.nodeGroup().move("grp2", 12);
    model.nodeGroup("grp2").placeAfter(null);
    model.nodeGroup().create("grp8", "Definitions", "relay");
    model.nodeGroup("grp8").set("type", "selection");
    model.nodeGroup().move("grp8", 13);
    model.nodeGroup("grp8").placeAfter(null);
    model.nodeGroup().create("grp7", "Definitions", "relay");
    model.nodeGroup("grp7").set("type", "selection");
    model.nodeGroup().move("grp7", 14);
    model.nodeGroup("grp7").placeAfter(null);
    model.nodeGroup().create("grp12", "Physics", "es");
    model.nodeGroup("grp12").placeAfter("ccn2");
    model.nodeGroup().create("grp13", "Physics", "es");
    model.nodeGroup("grp13").placeAfter("ccn2");
    model.nodeGroup().create("grp17", "Physics", "es2");
    model.nodeGroup("grp17").set("edim", "boundary");
    model.nodeGroup("grp17").placeAfter("term7");
    model.nodeGroup().create("grp18", "Physics", "es2");
    model.nodeGroup("grp18").set("edim", "boundary");
    model.nodeGroup("grp18").placeAfter("term7");
    model.nodeGroup().create("grp20", "Physics", "solid");
    model.nodeGroup("grp20").placeAfter("fix1");
    model.nodeGroup().create("grp23", "Physics", "solid2");
    model.nodeGroup("grp23").placeAfter("fix1");

    model.study("std1").label("Spring Constant");
    model.study("std2").label("Modal");
    model.study("std2").feature("param").set("pname", new String[]{"mu"});
    model.study("std2").feature("param").set("plistarr", new String[]{"0,0.957,0.000018"});
    model.study("std2").feature("param").set("punit", new String[]{"Pa*s"});
    model.study("std2").feature("eig").set("mesh", new String[]{"geom1", "mesh1"});
    model.study("std2").feature("eig").set("ngen", 5);
    model.study("std4").label("Parasitic Extraction (Off)");
    model.study("std4").feature("matsw").set("pname", new String[]{"matsw.relay.sw1"});
    model.study("std4").feature("matsw").set("plistarr", new String[]{"range(1,1,2)"});
    model.study("std4").feature("matsw").set("pcase", new String[]{"all"});
    model.study("std4").feature("stssw").label("Stationary Source Sweep (Off)");
    model.study("std5").label("Quasi-Static Sweep");
    model.study("std5").feature("matsw").active(false);
    model.study("std5").feature("matsw").set("pname", new String[]{"matsw.relay.sw1"});
    model.study("std5").feature("matsw").set("plistarr", new String[]{"range(1,1,2)"});
    model.study("std5").feature("matsw").set("pcase", new String[]{"all"});
    model.study("std5").feature("time").set("tlist", "range(0,1e-7,4e-5)");
    model.study("std5").feature("time").set("usertol", true);
    model.study("std5").feature("time").set("rtol", "0.00001");
    model.study("std5").feature("time").set("mesh", new String[]{"geom1", "mesh1"});
    model.study("std7").label("Transient Behavior");
    model.study("std7").feature("param").active(false);
    model.study("std7").feature("param").set("pname", new String[]{"mu"});
    model.study("std7").feature("param").set("plistarr", new String[]{"0.957,0.000018,0"});
    model.study("std7").feature("param").set("punit", new String[]{"Pa*s"});
    model.study("std7").feature("time").set("tlist", "range(0,1e-10,1e-7)");

    model.sol("sol1").attach("std1");
    model.sol("sol1").feature("v1").feature("relay_spatial_disp").set("scalemethod", "manual");
    model.sol("sol1").feature("v1").feature("relay_spatial_disp").set("scaleval", 2.011939801657807E-9);
    model.sol("sol1").feature("s1").feature("aDef").set("cachepattern", true);
    model.sol("sol1").feature("s1").feature("fc1").set("linsolver", "d1");
    model.sol("sol1").feature("s1").feature("d1").label("Suggested Direct Solver (solid)");
    model.sol("sol1").feature("s1").feature("i1").label("Suggested Iterative Solver (solid)");
    model.sol("sol1").feature("s1").feature("i1").set("nlinnormuse", true);
    model.sol("sol1").feature("s1").feature("i1").set("rhob", 40);
    model.sol("sol1").feature("s1").feature("i1").feature("mg1").feature("pr").feature("so1").set("relax", 0.8);
    model.sol("sol1").feature("s1").feature("i1").feature("mg1").feature("po").feature("so1").set("relax", 0.8);
    model.sol("sol1").runAll();
    model.sol("sol2").attach("std2");
    model.sol("sol2").feature("e1").set("transform", "eigenfrequency");
    model.sol("sol2").feature("e1").set("shift", "1[Hz]");
    model.sol("sol2").feature("e1").set("storelinpoint", true);
    model.sol("sol2").feature("e1").set("eigvfunscale", "maximum");
    model.sol("sol2").feature("e1").set("eigvfunscaleparam", 2.08E-11);
    model.sol("sol2").feature("e1").feature("aDef").set("cachepattern", true);
    model.sol("sol2").runAll();
    model.sol("sol6").attach("std4");
    model.sol("sol6").feature("v1").set("clistctrl", new String[]{"p1"});
    model.sol("sol6").feature("v1").set("cname", new String[]{"PortName"});
    model.sol("sol6").feature("v1").set("clist", new String[]{"range(1,1,26)"});
    model.sol("sol6").feature("v1").feature("relay_spatial_disp").set("scalemethod", "manual");
    model.sol("sol6").feature("v1").feature("relay_spatial_disp").set("scaleval", 5.983233028422924E-9);
    model.sol("sol6").feature("s1").set("probesel", "none");
    model.sol("sol6").feature("s1").feature("p1").set("pname", new String[]{"PortName"});
    model.sol("sol6").feature("s1").feature("p1").set("plistarr", new String[]{"range(1,1,26)"});
    model.sol("sol6").feature("s1").feature("p1").set("punit", new String[]{""});
    model.sol("sol6").feature("s1").feature("p1").set("pcontinuationmode", "no");
    model.sol("sol6").feature("s1").feature("i1").set("linsolver", "cg");
    model.sol("sol6").feature("s1").feature("i1").feature("mg1").set("prefun", "amg");
    model.sol("sol6").runAll();
    model.sol("sol7").attach("std5");
    model.sol("sol7").feature("v1").set("clist", new String[]{"range(0,1e-7,4e-5)", "3.9999999999999994E-8[s]"});
    model.sol("sol7").feature("t1").set("tlist", "range(0,1e-7,4e-5)");
    model.sol("sol7").feature("t1").set("rtol", "0.00001");
    model.sol("sol7").feature("t1").set("initialstepbdf", 0.01);
    model.sol("sol7").feature("t1").feature("aDef").set("cachepattern", true);
    model.sol("sol7").feature("t1").feature("se1").active(false);
    model.sol("sol7").feature("t1").feature("se1").feature("ss1").label("Electric potential");
    model.sol("sol7").feature("t1").feature("se1").feature("ss1").set("segvar", new String[]{"relay_u"});
    model.sol("sol7").feature("t1").feature("se1").feature("ss1").set("linsolver", "d1");
    model.sol("sol7").feature("t1").feature("se1").feature("ss2").label("Displacement field");
    model.sol("sol7").feature("t1").feature("se1").feature("ss2").set("segvar", new String[]{"relay_spatial_disp"});
    model.sol("sol7").feature("t1").feature("se1").feature("ss2").set("linsolver", "d1");
    model.sol("sol7").feature("t1").feature("se1").feature("ss3").label("Spatial mesh displacement");
    model.sol("sol7").feature("t1").feature("se1").feature("ss3")
         .set("segvar", new String[]{"relay_V", "relay_es_term37_V0_ode", "relay_es_term38_V0_ode", "relay_es_term39_V0_ode", "relay_es_term40_V0_ode", "relay_es_term49_V0_ode", "relay_es_term50_V0_ode", "relay_es_term51_V0_ode", "relay_es_term52_V0_ode", "relay_es_term53_V0_ode", 
         "relay_es_term54_V0_ode", "relay_es_term55_V0_ode", "relay_es_term56_V0_ode", "relay_es_term57_V0_ode", "relay_es_term58_V0_ode", "relay_es_term59_V0_ode", "relay_es_term60_V0_ode"});
    model.sol("sol7").feature("t1").feature("se1").feature("ss3").set("linsolver", "d1");
    model.sol("sol7").feature("t1").feature("se1").feature("ss3").set("subjtech", "onevery");
    model.sol("sol7").feature("t1").feature("se1").feature("material11")
         .set("segvar", new String[]{"relay_es_term41_V0_ode", "relay_es_term42_V0_ode", "relay_es_term43_V0_ode", "relay_es_term44_V0_ode", "relay_es_term45_V0_ode", "relay_es_term46_V0_ode", "relay_es_term47_V0_ode", "relay_es_term48_V0_ode"});
    model.sol("sol7").feature("t1").feature("se1").feature("material11").set("linsolver", "d1");
    model.sol("sol7").feature("t1").feature("se1").feature("ec1").label("Segregated Step 1");
    model.sol("sol7").feature("t1").feature("se1").feature("ec1").set("linsolver", "d1");
    model.sol("sol7").feature("t1").feature("se1").feature("es1").label("Segregated Step 1a");
    model.sol("sol7").feature("t1").feature("se1").feature("es1").set("linsolver", "d1");
    model.sol("sol7").feature("t1").feature("se1").feature("solid21").set("linsolver", "d1");
    model.sol("sol7").feature("t1").feature("se1").feature("es31").set("linsolver", "d1");
    model.sol("sol7").feature("t1").feature("se1").feature("ev1").label("Segregated Step 1b");
    model.sol("sol7").feature("t1").feature("se1").feature("ev1").set("linsolver", "d1");
    model.sol("sol7").feature("t1").feature("se1").feature("solid22").set("linsolver", "d1");
    model.sol("sol7").feature("t1").feature("d1").active(true);
    model.sol("sol7").feature("t1").feature("i1").label("Iterative Solver (GMRES with SA AMG) (eme1)");
    model.sol("sol7").feature("t1").feature("i1").set("itrestart", 5000);
    model.sol("sol7").feature("t1").feature("i1").set("rhob", 40);
    model.sol("sol7").feature("t1").feature("i1").feature("mg1").set("prefun", "saamg");
    model.sol("sol7").feature("t1").feature("i1").feature("mg1").set("usesmooth", false);
    model.sol("sol7").feature("t1").feature("i1").feature("mg1").set("hybridvar", new String[]{});
    model.sol("sol7").feature("t1").feature("i1").feature("mg1").feature("pr").feature("so1").set("relax", 0.8);
    model.sol("sol7").feature("t1").feature("i1").feature("mg1").feature("po").feature("so1").set("relax", 0.8);
    model.sol("sol7").feature("t1").feature("i1").feature("dp1").set("hybridvar", new String[]{});
    model.sol("sol7").feature("t1").feature("fc1").active(true);
    model.sol("sol7").feature("t1").feature("fc1").set("linsolver", "d1");
    model.sol("sol7").feature("t1").feature("fc1").set("maxiter", 8);
    model.sol("sol7").runAll();
    model.sol("sol8").attach("std7");
    model.sol("sol8").feature("v1").set("clist", new String[]{"range(0,1e-10,1e-7)", "1.0000000000000002E-10[s]"});
    model.sol("sol8").feature("t1").set("tlist", "range(0,1e-10,1e-7)");
    model.sol("sol8").feature("t1").feature("aDef").set("cachepattern", true);
    model.sol("sol8").feature("t1").feature("se1").active(false);
    model.sol("sol8").feature("t1").feature("se1").feature("ss1").label("Electric potential");
    model.sol("sol8").feature("t1").feature("se1").feature("ss1")
         .set("segvar", new String[]{"relay_V", "relay_es_term41_V0_ode", "relay_es_term42_V0_ode", "relay_es_term43_V0_ode", "relay_es_term44_V0_ode", "relay_es_term45_V0_ode", "relay_es_term46_V0_ode", "relay_es_term47_V0_ode", "relay_es_term48_V0_ode", "relay_es_term37_V0_ode", 
         "relay_es_term38_V0_ode", "relay_es_term39_V0_ode", "relay_es_term40_V0_ode", "relay_es_term49_V0_ode", "relay_es_term50_V0_ode", "relay_es_term51_V0_ode", "relay_es_term52_V0_ode", "relay_es_term53_V0_ode", "relay_es_term54_V0_ode", "relay_es_term55_V0_ode", 
         "relay_es_term56_V0_ode", "relay_es_term57_V0_ode", "relay_es_term58_V0_ode", "relay_es_term59_V0_ode", "relay_es_term60_V0_ode"});
    model.sol("sol8").feature("t1").feature("se1").feature("ss1").set("linsolver", "d1");
    model.sol("sol8").feature("t1").feature("se1").feature("ss2").label("Displacement field");
    model.sol("sol8").feature("t1").feature("se1").feature("ss2").set("segvar", new String[]{"relay_spatial_disp"});
    model.sol("sol8").feature("t1").feature("se1").feature("ss2").set("linsolver", "d1");
    model.sol("sol8").feature("t1").feature("se1").feature("ss3").label("Spatial mesh displacement");
    model.sol("sol8").feature("t1").feature("se1").feature("ss3").set("linsolver", "d1");
    model.sol("sol8").feature("t1").feature("se1").feature("ss3").set("subjtech", "onevery");
    model.sol("sol8").feature("t1").feature("se1").feature("solid21").set("linsolver", "d1");
    model.sol("sol8").feature("t1").feature("se1").feature("solid22").set("segvar", new String[]{"relay_u2"});
    model.sol("sol8").feature("t1").feature("se1").feature("solid22").set("linsolver", "d1");
    model.sol("sol8").feature("t1").feature("d1").active(true);
    model.sol("sol8").feature("t1").feature("i1").label("Iterative Solver (GMRES with SA AMG) (eme1)");
    model.sol("sol8").feature("t1").feature("i1").set("itrestart", 5000);
    model.sol("sol8").feature("t1").feature("i1").set("rhob", 40);
    model.sol("sol8").feature("t1").feature("i1").feature("mg1").set("prefun", "saamg");
    model.sol("sol8").feature("t1").feature("i1").feature("mg1").set("usesmooth", false);
    model.sol("sol8").feature("t1").feature("i1").feature("mg1")
         .set("hybridvar", new String[]{"relay_spatial_disp", "relay_V", "relay_es_term41_V0_ode", "relay_es_term42_V0_ode", "relay_es_term43_V0_ode", "relay_es_term44_V0_ode", "relay_es_term45_V0_ode", "relay_es_term46_V0_ode", "relay_es_term47_V0_ode", "relay_es_term48_V0_ode", 
         "relay_es_term37_V0_ode", "relay_es_term38_V0_ode", "relay_es_term39_V0_ode", "relay_es_term40_V0_ode", "relay_es_term49_V0_ode", "relay_es_term50_V0_ode", "relay_es_term51_V0_ode", "relay_es_term52_V0_ode", "relay_es_term53_V0_ode", "relay_es_term54_V0_ode", 
         "relay_es_term55_V0_ode", "relay_es_term56_V0_ode", "relay_es_term57_V0_ode", "relay_es_term58_V0_ode", "relay_es_term59_V0_ode", "relay_es_term60_V0_ode"});
    model.sol("sol8").feature("t1").feature("i1").feature("mg1").feature("pr").feature("so1").set("relax", 0.8);
    model.sol("sol8").feature("t1").feature("i1").feature("mg1").feature("po").feature("so1").set("relax", 0.8);
    model.sol("sol8").feature("t1").feature("i1").feature("dp1").set("hybridvar", new String[]{});
    model.sol("sol8").feature("t1").feature("fc1").active(true);
    model.sol("sol8").feature("t1").feature("fc1").label("Fully Coupled");
    model.sol("sol8").feature("t1").feature("fc1").set("linsolver", "d1");
    model.sol("sol8").feature("t1").feature("arDef").active(false);
    model.sol("sol8").feature("t1").feature("arDef").set("stopcondtype", "distortion");
    model.sol("sol8").feature("t1").feature("arDef").set("tadapmesh", new String[]{"mesh5"});
    model.sol("sol8").runAll();

    model.batch("p2").set("control", "param");
    model.batch("p2").set("pname", new String[]{"mu"});
    model.batch("p2").set("plistarr", new String[]{"0,0.957,0.000018"});
    model.batch("p2").set("punit", new String[]{"Pa*s"});
    model.batch("p2").set("err", true);
    model.batch("p2").feature("so1").set("seq", "sol2");
    model.batch("p2").feature("so1").set("psol", "sol10");
    model.batch("p2").feature("so1")
         .set("param", new String[]{"\"mu\",\"0\"", "\"mu\",\"0.957\"", "\"mu\",\"1.8E-5\""});
    model.batch("p2").attach("std2");
    model.batch("p2").run();
    model.batch("pm1").set("control", "matsw");
    model.batch("pm1").set("pname", new String[]{"matsw.relay.sw1"});
    model.batch("pm1").set("plistarr", new String[]{"range(1,1,2)"});
    model.batch("pm1").set("punit", new String[]{""});
    model.batch("pm1").set("err", true);
    model.batch("pm1").feature("so1").set("seq", "sol6");
    model.batch("pm1").feature("so1").set("psol", "sol17");
    model.batch("pm1").feature("so1")
         .set("param", new String[]{"\"matsw.relay.sw1\",\"1\"", "\"matsw.relay.sw1\",\"2\""});
    model.batch("pm1").attach("std4");
    model.batch("pm1").run();

    model.result().dataset("dset1").label("Spring Constant/Solution");
    model.result().dataset("dset1").set("frametype", "material");
    model.result().dataset("dset2").set("frametype", "material");
    model.result().dataset("cpl1").label("Quasi-Static Side View");
    model.result().dataset("cpl1").set("quickx", 1);
    model.result().dataset("cpl2").label("Quasi-Static Contact View");
    model.result().dataset("cpl2").set("quickplane", "xy");
    model.result().dataset("cpl2").set("quickz", "gaptol*1.01");
    model.result().dataset("cpl2").set("spacevars", new String[]{"cpl1x", "cpl1y"});
    model.result().dataset("cpl2").set("normal", new String[]{"cpl1nx", "cpl1ny", "cpl1nz"});
    model.result().dataset("cpl3").label("Spring Constant Displacement Contour");
    model.result().dataset("cpl3").set("quickplane", "xy");
    model.result().dataset("cpl3").set("quickz", "g_act");
    model.result().dataset("cpl3").set("spacevars", new String[]{"cpl1x", "cpl1y"});
    model.result().dataset("cpl3").set("normal", new String[]{"cpl1nx", "cpl1ny", "cpl1nz"});
    model.result().dataset("cpl4").label("Quasi-Static Displacement Contour");
    model.result().dataset("cpl4").set("quickplane", "xy");
    model.result().dataset("cpl4").set("quickz", "g_act-t_cont");
    model.result().dataset("cpl4").set("spacevars", new String[]{"cpl1x", "cpl1y"});
    model.result().dataset("cpl4").set("normal", new String[]{"cpl1nx", "cpl1ny", "cpl1nz"});
    model.result().dataset("an1_ds1").label("Penalty Contact Force");
    model.result().dataset("an1_ds1").set("function", "an1");
    model.result().dataset("an1_ds1").set("parmin1", -1.0E-10);
    model.result().dataset("an1_ds1").set("parmax1", 1.0E-8);
    model.result().dataset("an1_ds1").set("res1", 10000);
    model.result().evaluationGroup("std2EvgFrq").label("Eigenfrequencies (No Effects)");
    model.result().evaluationGroup("std2EvgFrq").set("data", "dset11");
    model.result().evaluationGroup("std2EvgFrq").set("looplevelinput", new String[]{"all", "all"});
    model.result().evaluationGroup("std2EvgFrq").feature("gev1").label("Modal Info");
    model.result().evaluationGroup("std2EvgFrq").feature("gev1")
         .set("expr", new String[]{"freq*2*pi", "imag(freq)/abs(freq)", "abs(freq)/imag(freq)/2"});
    model.result().evaluationGroup("std2EvgFrq").feature("gev1").set("unit", new String[]{"rad/s", "1", "1"});
    model.result().evaluationGroup("std2EvgFrq").feature("gev1")
         .set("descr", new String[]{"Angular frequency", "Damping ratio", "Quality factor"});
    model.result().evaluationGroup("std2EvgFrq").feature("gev1")
         .set("const", new String[][]{{"solid.refpntx", "0", "Reference point for moment computation, x coordinate"}, 
         {"solid.refpnty", "0", "Reference point for moment computation, y coordinate"}, 
         {"solid.refpntz", "0", "Reference point for moment computation, z coordinate"}, 
         {"root.relay.solid2.refpntx", "0", "Reference point for moment computation, x coordinate"}, 
         {"root.relay.solid2.refpnty", "0", "Reference point for moment computation, y coordinate"}, 
         {"root.relay.solid2.refpntz", "0", "Reference point for moment computation, z coordinate"}});
    model.result().evaluationGroup("eg1").label("Spring Constant");
    model.result().evaluationGroup("eg1").set("data", "dset1");
    model.result().evaluationGroup("eg1").feature("max1").label("Spring Constant");
    model.result().evaluationGroup("eg1").feature("max1").set("data", "dset1");
    model.result().evaluationGroup("eg1").feature("max1")
         .set("expr", new String[]{"F_spr", "solid.disp", "F_spr/solid.disp"});
    model.result().evaluationGroup("eg1").feature("max1").set("unit", new String[]{"N", "nm", "N/m"});
    model.result().evaluationGroup("eg1").feature("max1")
         .set("descr", new String[]{"Force applied", "Max displacement", "Spring constant"});
    model.result().evaluationGroup("eg1").feature("max1")
         .set("const", new String[][]{{"solid.refpntx", "0", "Reference point for moment computation, x coordinate"}, {"solid.refpnty", "0", "Reference point for moment computation, y coordinate"}, {"solid.refpntz", "0", "Reference point for moment computation, z coordinate"}});
    model.result().evaluationGroup("eg1").feature("max1").selection().named("box2");
    model.result().evaluationGroup("eg3").label("Parasitic Extraction (Off)");
//     model.result().evaluationGroup("eg3").feature("gmev3").label("Mutual capacitance");
//     model.result().evaluationGroup("eg3").feature("gmev3").set("data", "dset13");
//     model.result().evaluationGroup("eg3").feature("gmev3").set("looplevelinput", new String[]{"all", "last"});
//     model.result().evaluationGroup("eg3").feature("gmev3").set("expr", "root.relay.es2.Cinv");
//     model.result().evaluationGroup("eg3").feature("gmev3").set("unit", "1/F");
//     model.result().evaluationGroup("eg3").feature("gmev3").set("descr", "Inverse Maxwell capacitance");
//     model.result().evaluationGroup("eg3").feature("gmev3")
//          .set("const", new String[][]{{"solid.refpntx", "0", "Reference point for moment computation, x coordinate"}, 
//          {"solid.refpnty", "0", "Reference point for moment computation, y coordinate"}, 
//          {"solid.refpntz", "0", "Reference point for moment computation, z coordinate"}, 
//          {"root.relay.solid2.refpntx", "0", "Reference point for moment computation, x coordinate"}, 
//          {"root.relay.solid2.refpnty", "0", "Reference point for moment computation, y coordinate"}, 
//          {"root.relay.solid2.refpntz", "0", "Reference point for moment computation, z coordinate"}});
//     model.result().evaluationGroup("eg3").feature("gmev3").set("dataseries", "average");
//     model.result().evaluationGroup("eg3").feature("gmev3").set("outerdataseries", "none");
//     model.result().evaluationGroup("eg3").feature("gmev3").set("trans", "invmaxwellmutual");
    model.result().evaluationGroup("eg4").label("Contact Force and Resistance");
    model.result().evaluationGroup("eg4").set("data", "dset8");
    model.result().evaluationGroup("eg4").set("looplevelinput", new String[]{"manual"});
    model.result().evaluationGroup("eg4").set("looplevel", new int[]{201});
    model.result().evaluationGroup("eg4").feature("int1").label("Contact 1 Force");
    model.result().evaluationGroup("eg4").feature("int1").set("expr", new String[]{"Pc_cont"});
    model.result().evaluationGroup("eg4").feature("int1").set("unit", new String[]{"N"});
    model.result().evaluationGroup("eg4").feature("int1").set("descr", new String[]{"Contact 1 Force"});
    model.result().evaluationGroup("eg4").feature("int1")
         .set("const", new String[][]{{"solid.refpntx", "0", "Reference point for moment computation, x coordinate"}, {"solid.refpnty", "0", "Reference point for moment computation, y coordinate"}, {"solid.refpntz", "0", "Reference point for moment computation, z coordinate"}});
    model.result().evaluationGroup("eg4").feature("int1").selection().named("int1");
    model.result().evaluationGroup("eg4").feature("int2").label("Contact 2 Force");
    model.result().evaluationGroup("eg4").feature("int2").set("expr", new String[]{"Pc_cont"});
    model.result().evaluationGroup("eg4").feature("int2").set("unit", new String[]{"N"});

    return model;
  }

  public static Model run6(Model model) {
    model.result().evaluationGroup("eg4").feature("int2").set("descr", new String[]{"Contact 2 Force"});
    model.result().evaluationGroup("eg4").feature("int2")
         .set("const", new String[][]{{"solid.refpntx", "0", "Reference point for moment computation, x coordinate"}, {"solid.refpnty", "0", "Reference point for moment computation, y coordinate"}, {"solid.refpntz", "0", "Reference point for moment computation, z coordinate"}});
    model.result().evaluationGroup("eg4").feature("int2").selection().named("int2");
    model.result().evaluationGroup("eg4").feature("int3").label("Contact 3 Force");
    model.result().evaluationGroup("eg4").feature("int3").set("expr", new String[]{"Pc_cont"});
    model.result().evaluationGroup("eg4").feature("int3").set("unit", new String[]{"N"});
    model.result().evaluationGroup("eg4").feature("int3").set("descr", new String[]{"Contact 3 Force"});
    model.result().evaluationGroup("eg4").feature("int3")
         .set("const", new String[][]{{"solid.refpntx", "0", "Reference point for moment computation, x coordinate"}, {"solid.refpnty", "0", "Reference point for moment computation, y coordinate"}, {"solid.refpntz", "0", "Reference point for moment computation, z coordinate"}});
    model.result().evaluationGroup("eg4").feature("int3").selection().named("int3");
    model.result().evaluationGroup("eg4").feature("int4").label("Contact 4 Force");
    model.result().evaluationGroup("eg4").feature("int4").set("expr", new String[]{"Pc_cont"});
    model.result().evaluationGroup("eg4").feature("int4").set("unit", new String[]{"N"});
    model.result().evaluationGroup("eg4").feature("int4").set("descr", new String[]{"Contact 4 Force"});
    model.result().evaluationGroup("eg4").feature("int4")
         .set("const", new String[][]{{"solid.refpntx", "0", "Reference point for moment computation, x coordinate"}, {"solid.refpnty", "0", "Reference point for moment computation, y coordinate"}, {"solid.refpntz", "0", "Reference point for moment computation, z coordinate"}});
    model.result().evaluationGroup("eg4").feature("int4").selection().named("int4");
    model.result().evaluationGroup("eg4").feature("int5").label("Contact 5 Force");
    model.result().evaluationGroup("eg4").feature("int5").set("expr", new String[]{"Pc_cont"});
    model.result().evaluationGroup("eg4").feature("int5").set("unit", new String[]{"N"});
    model.result().evaluationGroup("eg4").feature("int5").set("descr", new String[]{"Contact 5 Force"});
    model.result().evaluationGroup("eg4").feature("int5")
         .set("const", new String[][]{{"solid.refpntx", "0", "Reference point for moment computation, x coordinate"}, {"solid.refpnty", "0", "Reference point for moment computation, y coordinate"}, {"solid.refpntz", "0", "Reference point for moment computation, z coordinate"}});
    model.result().evaluationGroup("eg4").feature("int5").selection().named("int5");
    model.result().evaluationGroup("eg4").feature("int6").label("Contact 6 Force");
    model.result().evaluationGroup("eg4").feature("int6").set("expr", new String[]{"Pc_cont"});
    model.result().evaluationGroup("eg4").feature("int6").set("unit", new String[]{"N"});
    model.result().evaluationGroup("eg4").feature("int6").set("descr", new String[]{"Contact 6 Force"});
    model.result().evaluationGroup("eg4").feature("int6")
         .set("const", new String[][]{{"solid.refpntx", "0", "Reference point for moment computation, x coordinate"}, {"solid.refpnty", "0", "Reference point for moment computation, y coordinate"}, {"solid.refpntz", "0", "Reference point for moment computation, z coordinate"}});
    model.result().evaluationGroup("eg4").feature("int6").selection().named("int6");
    model.result().evaluationGroup("eg4").feature("int7").label("Contact 7 Force");
    model.result().evaluationGroup("eg4").feature("int7").set("expr", new String[]{"Pc_cont"});
    model.result().evaluationGroup("eg4").feature("int7").set("unit", new String[]{"N"});
    model.result().evaluationGroup("eg4").feature("int7").set("descr", new String[]{"Contact 7 Force"});
    model.result().evaluationGroup("eg4").feature("int7")
         .set("const", new String[][]{{"solid.refpntx", "0", "Reference point for moment computation, x coordinate"}, {"solid.refpnty", "0", "Reference point for moment computation, y coordinate"}, {"solid.refpntz", "0", "Reference point for moment computation, z coordinate"}});
    model.result().evaluationGroup("eg4").feature("int7").selection().named("int7");
    model.result().evaluationGroup("eg4").feature("int8").label("Contact 8 Force");
    model.result().evaluationGroup("eg4").feature("int8").set("expr", new String[]{"Pc_cont"});
    model.result().evaluationGroup("eg4").feature("int8").set("unit", new String[]{"N"});
    model.result().evaluationGroup("eg4").feature("int8").set("descr", new String[]{"Contact 8 Force"});
    model.result().evaluationGroup("eg4").feature("int8")
         .set("const", new String[][]{{"solid.refpntx", "0", "Reference point for moment computation, x coordinate"}, {"solid.refpnty", "0", "Reference point for moment computation, y coordinate"}, {"solid.refpntz", "0", "Reference point for moment computation, z coordinate"}});
    model.result().evaluationGroup("eg4").feature("int8").selection().named("int8");
    model.result().evaluationGroup("eg4").feature("int9").label("Contact 9 Force");
    model.result().evaluationGroup("eg4").feature("int9").set("expr", new String[]{"Pc_cont"});
    model.result().evaluationGroup("eg4").feature("int9").set("unit", new String[]{"N"});
    model.result().evaluationGroup("eg4").feature("int9").set("descr", new String[]{"Contact 9 Force"});
    model.result().evaluationGroup("eg4").feature("int9")
         .set("const", new String[][]{{"solid.refpntx", "0", "Reference point for moment computation, x coordinate"}, {"solid.refpnty", "0", "Reference point for moment computation, y coordinate"}, {"solid.refpntz", "0", "Reference point for moment computation, z coordinate"}});
    model.result().evaluationGroup("eg4").feature("int9").selection().named("int9");
    model.result().evaluationGroup("eg4").feature("int10").label("Contact 10 Force");
    model.result().evaluationGroup("eg4").feature("int10").set("expr", new String[]{"Pc_cont"});
    model.result().evaluationGroup("eg4").feature("int10").set("unit", new String[]{"N"});
    model.result().evaluationGroup("eg4").feature("int10").set("descr", new String[]{"Contact 10 Force"});
    model.result().evaluationGroup("eg4").feature("int10")
         .set("const", new String[][]{{"solid.refpntx", "0", "Reference point for moment computation, x coordinate"}, {"solid.refpnty", "0", "Reference point for moment computation, y coordinate"}, {"solid.refpntz", "0", "Reference point for moment computation, z coordinate"}});
    model.result().evaluationGroup("eg4").feature("int10").selection().named("int10");
    model.result().evaluationGroup("eg4").feature("int11").label("Contact 11 Force");
    model.result().evaluationGroup("eg4").feature("int11").set("expr", new String[]{"Pc_cont"});
    model.result().evaluationGroup("eg4").feature("int11").set("unit", new String[]{"N"});
    model.result().evaluationGroup("eg4").feature("int11").set("descr", new String[]{"Contact 11 Force"});
    model.result().evaluationGroup("eg4").feature("int11")
         .set("const", new String[][]{{"solid.refpntx", "0", "Reference point for moment computation, x coordinate"}, {"solid.refpnty", "0", "Reference point for moment computation, y coordinate"}, {"solid.refpntz", "0", "Reference point for moment computation, z coordinate"}});
    model.result().evaluationGroup("eg4").feature("int11").selection().named("int11");
    model.result().evaluationGroup("eg4").feature("int12").label("Contact 12 Force");
    model.result().evaluationGroup("eg4").feature("int12").set("expr", new String[]{"Pc_cont"});
    model.result().evaluationGroup("eg4").feature("int12").set("unit", new String[]{"N"});
    model.result().evaluationGroup("eg4").feature("int12").set("descr", new String[]{"Contact 12 Force"});
    model.result().evaluationGroup("eg4").feature("int12")
         .set("const", new String[][]{{"solid.refpntx", "0", "Reference point for moment computation, x coordinate"}, {"solid.refpnty", "0", "Reference point for moment computation, y coordinate"}, {"solid.refpntz", "0", "Reference point for moment computation, z coordinate"}});
    model.result().evaluationGroup("eg4").feature("int12").selection().named("int12");
    model.result().evaluationGroup("eg4").feature("int13").label("Contact 13 Force");
    model.result().evaluationGroup("eg4").feature("int13").set("expr", new String[]{"Pc_cont"});
    model.result().evaluationGroup("eg4").feature("int13").set("unit", new String[]{"N"});
    model.result().evaluationGroup("eg4").feature("int13").set("descr", new String[]{"Contact 13 Force"});
    model.result().evaluationGroup("eg4").feature("int13")
         .set("const", new String[][]{{"solid.refpntx", "0", "Reference point for moment computation, x coordinate"}, {"solid.refpnty", "0", "Reference point for moment computation, y coordinate"}, {"solid.refpntz", "0", "Reference point for moment computation, z coordinate"}});
    model.result().evaluationGroup("eg4").feature("int13").selection().named("int13");
    model.result().evaluationGroup("eg4").feature("int14").label("Contact 14 Force");
    model.result().evaluationGroup("eg4").feature("int14").set("expr", new String[]{"Pc_cont"});
    model.result().evaluationGroup("eg4").feature("int14").set("unit", new String[]{"N"});
    model.result().evaluationGroup("eg4").feature("int14").set("descr", new String[]{"Contact 14 Force"});
    model.result().evaluationGroup("eg4").feature("int14")
         .set("const", new String[][]{{"solid.refpntx", "0", "Reference point for moment computation, x coordinate"}, {"solid.refpnty", "0", "Reference point for moment computation, y coordinate"}, {"solid.refpntz", "0", "Reference point for moment computation, z coordinate"}});
    model.result().evaluationGroup("eg4").feature("int14").selection().named("int14");
    model.result().evaluationGroup("eg4").feature("int15").label("Contact 15 Force");
    model.result().evaluationGroup("eg4").feature("int15").set("expr", new String[]{"Pc_cont"});
    model.result().evaluationGroup("eg4").feature("int15").set("unit", new String[]{"N"});
    model.result().evaluationGroup("eg4").feature("int15").set("descr", new String[]{"Contact 15 Force"});
    model.result().evaluationGroup("eg4").feature("int15")
         .set("const", new String[][]{{"solid.refpntx", "0", "Reference point for moment computation, x coordinate"}, {"solid.refpnty", "0", "Reference point for moment computation, y coordinate"}, {"solid.refpntz", "0", "Reference point for moment computation, z coordinate"}});
    model.result().evaluationGroup("eg4").feature("int15").selection().named("int15");
    model.result().evaluationGroup("eg4").feature("int16").label("Contact 16 Force");
    model.result().evaluationGroup("eg4").feature("int16").set("expr", new String[]{"Pc_cont"});
    model.result().evaluationGroup("eg4").feature("int16").set("unit", new String[]{"N"});
    model.result().evaluationGroup("eg4").feature("int16").set("descr", new String[]{"Contact 16 Force"});
    model.result().evaluationGroup("eg4").feature("int16")
         .set("const", new String[][]{{"solid.refpntx", "0", "Reference point for moment computation, x coordinate"}, {"solid.refpnty", "0", "Reference point for moment computation, y coordinate"}, {"solid.refpntz", "0", "Reference point for moment computation, z coordinate"}});
    model.result().evaluationGroup("eg4").feature("int16").selection().named("int16");
    model.result().evaluationGroup("eg4").feature("int17").label("Total Contact Force");
    model.result().evaluationGroup("eg4").feature("int17").set("expr", new String[]{"Pc_cont"});
    model.result().evaluationGroup("eg4").feature("int17").set("unit", new String[]{"N"});
    model.result().evaluationGroup("eg4").feature("int17").set("descr", new String[]{"Total Contact Force"});
    model.result().evaluationGroup("eg4").feature("int17")
         .set("const", new String[][]{{"solid.refpntx", "0", "Reference point for moment computation, x coordinate"}, {"solid.refpnty", "0", "Reference point for moment computation, y coordinate"}, {"solid.refpntz", "0", "Reference point for moment computation, z coordinate"}});
    model.result().evaluationGroup("eg4").feature("int17").selection().named("box8");
    model.result().evaluationGroup("std2EvgFrq").run();
    model.result().evaluationGroup("eg1").run();
    model.result().evaluationGroup("eg3").run();
    model.result().evaluationGroup("eg4").run();
    model.result("pg5").label("Mode 1 Shape (No Effects)");
    model.result("pg5").set("applyselectiontodatasetedges", true);
    model.result("pg5").set("edges", false);
    model.result("pg5").set("showlegends", false);
    model.result("pg5").set("axisactive", true);
    model.result("pg5").feature("surf1").label("Mode 1 Surface");
    model.result("pg5").feature("surf1")
         .set("const", new String[][]{{"solid.refpntx", "0", "Reference point for moment computation, x coordinate"}, {"solid.refpnty", "0", "Reference point for moment computation, y coordinate"}, {"solid.refpntz", "0", "Reference point for moment computation, z coordinate"}});
    model.result("pg5").feature("surf1").set("colortable", "RainbowLight");
    model.result("pg5").feature("surf1").set("resolution", "norefine");
    model.result("pg5").feature("surf1").set("smooth", "none");
    model.result("pg5").feature("surf1").set("resolution", "norefine");
    model.result("pg5").feature("surf1").feature("def").set("scale", 15224.28591428038);
    model.result("pg5").feature("surf1").feature("def").set("scaleactive", false);
    model.result("pg5").feature("mesh1").active(false);
    model.result("pg5").feature("mesh1").label("Mesh");
    model.result("pg5").feature("mesh1").set("elemcolor", "none");
    model.result("pg5").feature("mesh1").set("filteractive", true);
    model.result("pg5").feature("mesh1").set("logfilterexpr", "Z>0");
    model.result("pg5").feature("mesh1").set("inheritplot", "surf1");
    model.result("pg5").feature("mesh1").feature("def1").label("Deformation");
    model.result("pg5").feature("mesh1").feature("def1").set("scale", 48067.3809695015);
    model.result("pg5").feature("mesh1").feature("def1").set("scaleactive", false);
    model.result("pg6").label("Mode 2 Shape (No Effects)");
    model.result("pg6").set("looplevel", new int[]{2});
    model.result("pg6").set("applyselectiontodatasetedges", true);
    model.result("pg6").set("edges", false);
    model.result("pg6").set("showlegends", false);
    model.result("pg6").set("axisactive", true);
    model.result("pg6").feature("surf1").label("Mode 2 Surface");
    model.result("pg6").feature("surf1")
         .set("const", new String[][]{{"solid.refpntx", "0", "Reference point for moment computation, x coordinate"}, {"solid.refpnty", "0", "Reference point for moment computation, y coordinate"}, {"solid.refpntz", "0", "Reference point for moment computation, z coordinate"}});
    model.result("pg6").feature("surf1").set("colortable", "RainbowLight");
    model.result("pg6").feature("surf1").set("resolution", "norefine");
    model.result("pg6").feature("surf1").set("smooth", "none");
    model.result("pg6").feature("surf1").set("resolution", "norefine");
    model.result("pg6").feature("surf1").feature("def").set("scale", 15202.009484912547);
    model.result("pg6").feature("surf1").feature("def").set("scaleactive", false);
    model.result("pg6").feature("mesh1").active(false);
    model.result("pg6").feature("mesh1").label("Mesh");
    model.result("pg6").feature("mesh1").set("elemcolor", "none");
    model.result("pg6").feature("mesh1").set("filteractive", true);
    model.result("pg6").feature("mesh1").set("logfilterexpr", "Z>0");
    model.result("pg6").feature("mesh1").set("inheritplot", "surf1");
    model.result("pg6").feature("mesh1").feature("def1").label("Deformation");
    model.result("pg6").feature("mesh1").feature("def1").set("scale", 47980.01540592765);
    model.result("pg6").feature("mesh1").feature("def1").set("scaleactive", false);
    model.result("pg7").label("Mode 3 Shape (No Effects)");
    model.result("pg7").set("looplevel", new int[]{3});
    model.result("pg7").set("applyselectiontodatasetedges", true);
    model.result("pg7").set("edges", false);
    model.result("pg7").set("showlegends", false);
    model.result("pg7").set("axisactive", true);
    model.result("pg7").feature("surf1").label("Mode 3 Surface");
    model.result("pg7").feature("surf1")
         .set("const", new String[][]{{"solid.refpntx", "0", "Reference point for moment computation, x coordinate"}, {"solid.refpnty", "0", "Reference point for moment computation, y coordinate"}, {"solid.refpntz", "0", "Reference point for moment computation, z coordinate"}});
    model.result("pg7").feature("surf1").set("colortable", "RainbowLight");
    model.result("pg7").feature("surf1").set("resolution", "norefine");
    model.result("pg7").feature("surf1").set("smooth", "none");
    model.result("pg7").feature("surf1").set("resolution", "norefine");
    model.result("pg7").feature("surf1").feature("def").set("scale", 15202.015351541653);
    model.result("pg7").feature("surf1").feature("def").set("scaleactive", false);
    model.result("pg7").feature("mesh1").active(false);
    model.result("pg7").feature("mesh1").label("Mesh");
    model.result("pg7").feature("mesh1").set("elemcolor", "none");
    model.result("pg7").feature("mesh1").set("filteractive", true);
    model.result("pg7").feature("mesh1").set("logfilterexpr", "Z>0");
    model.result("pg7").feature("mesh1").set("inheritplot", "surf1");
    model.result("pg7").feature("mesh1").feature("def1").label("Deformation");
    model.result("pg7").feature("mesh1").feature("def1").set("scale", 47980.03024465447);
    model.result("pg7").feature("mesh1").feature("def1").set("scaleactive", false);
    model.result("pg8").label("Mode 4 Shape (No Effects)");
    model.result("pg8").set("looplevel", new int[]{4});
    model.result("pg8").set("applyselectiontodatasetedges", true);
    model.result("pg8").set("edges", false);
    model.result("pg8").set("showlegends", false);
    model.result("pg8").set("axisactive", true);
    model.result("pg8").feature("surf1").label("Mode 4 Surface");
    model.result("pg8").feature("surf1")
         .set("const", new String[][]{{"solid.refpntx", "0", "Reference point for moment computation, x coordinate"}, {"solid.refpnty", "0", "Reference point for moment computation, y coordinate"}, {"solid.refpntz", "0", "Reference point for moment computation, z coordinate"}});
    model.result("pg8").feature("surf1").set("colortable", "RainbowLight");
    model.result("pg8").feature("surf1").set("resolution", "norefine");
    model.result("pg8").feature("surf1").set("smooth", "none");
    model.result("pg8").feature("surf1").set("resolution", "norefine");
    model.result("pg8").feature("surf1").feature("def").set("scale", 15178.415730345854);
    model.result("pg8").feature("surf1").feature("def").set("scaleactive", false);
    model.result("pg8").feature("mesh1").active(false);
    model.result("pg8").feature("mesh1").label("Mesh");
    model.result("pg8").feature("mesh1").set("elemcolor", "none");
    model.result("pg8").feature("mesh1").set("filteractive", true);
    model.result("pg8").feature("mesh1").set("logfilterexpr", "Z>0");
    model.result("pg8").feature("mesh1").set("inheritplot", "surf1");
    model.result("pg8").feature("mesh1").feature("def1").label("Deformation");
    model.result("pg8").feature("mesh1").feature("def1").set("scale", 47203.12623042572);
    model.result("pg8").feature("mesh1").feature("def1").set("scaleactive", false);
    model.result("pg9").label("Mode 5 Shape (No Effects)");
    model.result("pg9").set("looplevel", new int[]{5});
    model.result("pg9").set("applyselectiontodatasetedges", true);
    model.result("pg9").set("edges", false);
    model.result("pg9").set("showlegends", false);
    model.result("pg9").set("axisactive", true);
    model.result("pg9").feature("surf1").label("Mode 5 Surface");
    model.result("pg9").feature("surf1")
         .set("const", new String[][]{{"solid.refpntx", "0", "Reference point for moment computation, x coordinate"}, {"solid.refpnty", "0", "Reference point for moment computation, y coordinate"}, {"solid.refpntz", "0", "Reference point for moment computation, z coordinate"}});
    model.result("pg9").feature("surf1").set("colortable", "RainbowLight");
    model.result("pg9").feature("surf1").set("resolution", "norefine");
    model.result("pg9").feature("surf1").set("smooth", "none");
    model.result("pg9").feature("surf1").set("resolution", "norefine");
    model.result("pg9").feature("surf1").feature("def").set("scale", 14992.554338313414);
    model.result("pg9").feature("surf1").feature("def").set("scaleactive", false);
    model.result("pg9").feature("mesh1").active(false);
    model.result("pg9").feature("mesh1").label("Mesh");
    model.result("pg9").feature("mesh1").set("elemcolor", "none");
    model.result("pg9").feature("mesh1").set("filteractive", true);
    model.result("pg9").feature("mesh1").set("logfilterexpr", "Z>0");
    model.result("pg9").feature("mesh1").set("inheritplot", "surf1");
    model.result("pg9").feature("mesh1").feature("def1").label("Deformation");
    model.result("pg9").feature("mesh1").feature("def1").set("scale", 47228.44438435967);
    model.result("pg9").feature("mesh1").feature("def1").set("scaleactive", false);
    model.result("pg10").label("Mode 6 Shape (No Effects)");
    model.result("pg10").set("looplevel", new int[]{6});
    model.result("pg10").set("applyselectiontodatasetedges", true);
    model.result("pg10").set("edges", false);
    model.result("pg10").set("showlegends", false);
    model.result("pg10").set("axisactive", true);
    model.result("pg10").feature("surf1").label("Mode 6 Surface");
    model.result("pg10").feature("surf1")
         .set("const", new String[][]{{"solid.refpntx", "0", "Reference point for moment computation, x coordinate"}, {"solid.refpnty", "0", "Reference point for moment computation, y coordinate"}, {"solid.refpntz", "0", "Reference point for moment computation, z coordinate"}});
    model.result("pg10").feature("surf1").set("colortable", "RainbowLight");
    model.result("pg10").feature("surf1").set("resolution", "norefine");
    model.result("pg10").feature("surf1").set("smooth", "none");
    model.result("pg10").feature("surf1").set("resolution", "norefine");
    model.result("pg10").feature("surf1").feature("def").set("scale", 15000.460845607176);
    model.result("pg10").feature("surf1").feature("def").set("scaleactive", false);
    model.result("pg10").feature("mesh1").active(false);
    model.result("pg10").feature("mesh1").label("Mesh");
    model.result("pg10").feature("mesh1").set("elemcolor", "none");
    model.result("pg10").feature("mesh1").set("filteractive", true);
    model.result("pg10").feature("mesh1").set("logfilterexpr", "Z>0");
    model.result("pg10").feature("mesh1").set("inheritplot", "surf1");
    model.result("pg10").feature("mesh1").feature("def1").label("Deformation");
    model.result("pg10").feature("mesh1").feature("def1").set("scale", 47926.128571053436);
    model.result("pg10").feature("mesh1").feature("def1").set("scaleactive", false);
    model.result("pg31").label("Parasitic Extraction (Off)");
    model.result("pg31").set("looplevel", new int[]{2, 1});
    model.result("pg31").set("edges", false);
    model.result("pg31").feature("vol1").label("Potential");
    model.result("pg31").feature("vol1")
         .set("const", new String[][]{{"solid.refpntx", "0", "Reference point for moment computation, x coordinate"}, 
         {"solid.refpnty", "0", "Reference point for moment computation, y coordinate"}, 
         {"solid.refpntz", "0", "Reference point for moment computation, z coordinate"}, 
         {"root.relay.solid2.refpntx", "0", "Reference point for moment computation, x coordinate"}, 
         {"root.relay.solid2.refpnty", "0", "Reference point for moment computation, y coordinate"}, 
         {"root.relay.solid2.refpntz", "0", "Reference point for moment computation, z coordinate"}});
    model.result("pg31").feature("vol1").set("resolution", "normal");
    model.result("pg2").label("Boundary Loads (solid)");
    model.result("pg2").set("applyselectiontodatasetedges", true);
    model.result("pg2").set("titletype", "custom");
    model.result("pg2").set("typeintitle", false);
    model.result("pg2").set("descriptionintitle", false);
    model.result("pg2").set("unitintitle", false);
    model.result("pg2").set("showhiddenobjects", true);
    model.result("pg2").set("frametype", "spatial");
    model.result("pg2").set("showlegendsunit", true);
    model.result("pg2").feature("arws1").label("Boundary Load");
    model.result("pg2").feature("arws1").set("expr", new String[]{"solid.F_Ax", "solid.F_Ay", "solid.F_Az"});
    model.result("pg2").feature("arws1").set("descr", "Load (spatial frame)");
    model.result("pg2").feature("arws1")
         .set("const", new String[][]{{"solid.refpntx", "0", "Reference point for moment computation, x coordinate"}, {"solid.refpnty", "0", "Reference point for moment computation, y coordinate"}, {"solid.refpntz", "0", "Reference point for moment computation, z coordinate"}});
    model.result("pg2").feature("arws1").set("arrowlength", "normalized");
    model.result("pg2").feature("arws1").set("scale", 4.5E-4);
    model.result("pg2").feature("arws1").set("scaleactive", true);
    model.result("pg30").label("Deformation");
    model.result("pg30").set("edges", false);
    model.result("pg30").set("legendpos", "bottom");
    model.result("pg30").feature("vol1")
         .set("const", new String[][]{{"solid.refpntx", "0", "Reference point for moment computation, x coordinate"}, {"solid.refpnty", "0", "Reference point for moment computation, y coordinate"}, {"solid.refpntz", "0", "Reference point for moment computation, z coordinate"}});
    model.result("pg30").feature("vol1").set("resolution", "normal");
    model.result("pg30").feature("vol1").feature("def1").set("scale", 831.2244679774506);
    model.result("pg30").feature("vol1").feature("def1").set("scaleactive", false);
    model.result("pg36").label("Relay Displacement Contour");
    model.result("pg36").set("data", "cpl3");
    model.result("pg36").feature("con1").set("unit", "nm");
    model.result("pg36").feature("con1")
         .set("const", new String[][]{{"solid.refpntx", "0", "Reference point for moment computation, x coordinate"}, {"solid.refpnty", "0", "Reference point for moment computation, y coordinate"}, {"solid.refpntz", "0", "Reference point for moment computation, z coordinate"}});
    model.result("pg36").feature("con1").set("levelmethod", "levels");
    model.result("pg36").feature("con1").set("levels", "range(0.375,0.0001,0.378)");
    model.result("pg36").feature("con1").set("resolution", "normal");
    model.result("pg1").label("Stress");
    model.result("pg1").set("applyselectiontodatasetedges", true);
    model.result("pg1").set("edges", false);
    model.result("pg1").set("legendpos", "bottom");
    model.result("pg1").feature("surf1").label("Stress Surface");
    model.result("pg1").feature("surf1")
         .set("const", new String[][]{{"solid.refpntx", "0", "Reference point for moment computation, x coordinate"}, {"solid.refpnty", "0", "Reference point for moment computation, y coordinate"}, {"solid.refpntz", "0", "Reference point for moment computation, z coordinate"}});
    model.result("pg1").feature("surf1").set("colortable", "RainbowLight");
    model.result("pg1").feature("surf1").set("resolution", "normal");
    model.result("pg1").feature("surf1").feature("def").set("scale", 830.8012575088194);
    model.result("pg1").feature("surf1").feature("def").set("scaleactive", false);
    model.result("pg1").feature("mesh1").active(false);
    model.result("pg1").feature("mesh1").label("Mesh");
    model.result("pg1").feature("mesh1").set("elemcolor", "none");
    model.result("pg1").feature("mesh1").set("filteractive", true);
    model.result("pg1").feature("mesh1").set("logfilterexpr", "Z>0");
    model.result("pg1").feature("mesh1").set("inheritplot", "surf1");
    model.result("pg1").feature("mesh1").feature("def1").label("Deformation");
    model.result("pg1").feature("mesh1").feature("def1").set("scale", 2665.9021486813976);
    model.result("pg1").feature("mesh1").feature("def1").set("scaleactive", false);
    model.result("pg4").label("Strain");
    model.result("pg4").set("applyselectiontodatasetedges", true);
    model.result("pg4").set("edges", false);
    model.result("pg4").set("legendpos", "bottom");
    model.result("pg4").feature("surf1").label("Strain Surface");
    model.result("pg4").feature("surf1")
         .set("const", new String[][]{{"solid.refpntx", "0", "Reference point for moment computation, x coordinate"}, {"solid.refpnty", "0", "Reference point for moment computation, y coordinate"}, {"solid.refpntz", "0", "Reference point for moment computation, z coordinate"}});
    model.result("pg4").feature("surf1").set("colortable", "RainbowLight");
    model.result("pg4").feature("surf1").set("resolution", "normal");
    model.result("pg4").feature("surf1").feature("def").set("scale", 830.8012575088194);
    model.result("pg4").feature("surf1").feature("def").set("scaleactive", false);
    model.result("pg4").feature("mesh1").active(false);
    model.result("pg4").feature("mesh1").label("Mesh");
    model.result("pg4").feature("mesh1").set("elemcolor", "none");
    model.result("pg4").feature("mesh1").set("filteractive", true);
    model.result("pg4").feature("mesh1").set("logfilterexpr", "Z>0");
    model.result("pg4").feature("mesh1").set("inheritplot", "surf1");
    model.result("pg4").feature("mesh1").feature("def1").label("Deformation");
    model.result("pg4").feature("mesh1").feature("def1").set("scale", 1095.1959771537831);
    model.result("pg4").feature("mesh1").feature("def1").set("scaleactive", false);
    model.result("pg23").label("Side View Potential");
    model.result("pg23").set("looplevel", new int[]{201});
    model.result("pg23").set("view", "view6");
    model.result("pg23").set("showhiddenobjects", true);
    model.result("pg23").set("edges", false);
    model.result("pg23").feature("surf1").label("Surface");
    model.result("pg23").feature("surf1")
         .set("const", new String[][]{{"solid.refpntx", "0", "Reference point for moment computation, x coordinate"}, {"solid.refpnty", "0", "Reference point for moment computation, y coordinate"}, {"solid.refpntz", "0", "Reference point for moment computation, z coordinate"}});
    model.result("pg23").feature("surf1").set("resolution", "normal");
    model.result("pg22").label("Displacement-Time");
    model.result("pg22").set("solrepresentation", "solutioninfo");
    model.result("pg22").set("xlabel", "Time (s)");
    model.result("pg22").set("ylabel", "Total displacement (\u00b5m)");
    model.result("pg22").set("xlabelactive", false);
    model.result("pg22").set("ylabelactive", false);
    model.result("pg22").feature("ptgr1").label("Point Graph");
    model.result("pg22").feature("ptgr1")
         .set("const", new String[][]{{"solid.refpntx", "0", "Reference point for moment computation, x coordinate"}, {"solid.refpnty", "0", "Reference point for moment computation, y coordinate"}, {"solid.refpntz", "0", "Reference point for moment computation, z coordinate"}});
    model.result("pg25").label("Displacement-Voltage");
    model.result("pg25").set("solrepresentation", "solutioninfo");
    model.result("pg25").set("titletype", "manual");
    model.result("pg25").set("title", "Quasi-Static Voltage Sweep");
    model.result("pg25").set("xlabel", "Terminal voltage (V)");
    model.result("pg25").set("ylabel", "Total displacement (\u00b5m)");
    model.result("pg25").set("axislimits", true);
    model.result("pg25").set("xmin", -0.24777231647351827);

    return model;
  }

  public static Model run7(Model model) {
    model.result("pg25").set("xmax", 15);
    model.result("pg25").set("ymin", -0.0022440859333866512);
    model.result("pg25").set("ymax", 0.06241080838163671);
    model.result("pg25").set("xlabelactive", false);
    model.result("pg25").set("ylabelactive", false);
    model.result("pg25").feature("ptgr1").label("Point Graph");
    model.result("pg25").feature("ptgr1")
         .set("const", new String[][]{{"solid.refpntx", "0", "Reference point for moment computation, x coordinate"}, 
         {"solid.refpnty", "0", "Reference point for moment computation, y coordinate"}, 
         {"solid.refpntz", "0", "Reference point for moment computation, z coordinate"}, 
         {"root.relay.solid2.refpntx", "0", "Reference point for moment computation, x coordinate"}, 
         {"root.relay.solid2.refpnty", "0", "Reference point for moment computation, y coordinate"}, 
         {"root.relay.solid2.refpntz", "0", "Reference point for moment computation, z coordinate"}});
    model.result("pg25").feature("ptgr1").set("xdata", "expr");
    model.result("pg25").feature("ptgr1").set("xdataexpr", "es.V0_1");
    model.result("pg25").feature("ptgr1").set("xdatadescr", "Terminal voltage");
    model.result("pg25").feature("ptgr1").set("xdataunit", "V");
    model.result("pg26").label("Velocity-Time");
    model.result("pg26").set("solrepresentation", "solutioninfo");
    model.result("pg26").set("xlabel", "Solution number");
    model.result("pg26").set("ylabel", "d(solid.disp,TIME) (m/s)");
    model.result("pg26").set("xlabelactive", false);
    model.result("pg26").set("ylabelactive", false);
    model.result("pg26").feature("ptgr1").label("Point Graph");
    model.result("pg26").feature("ptgr1")
         .set("const", new String[][]{{"solid.refpntx", "0", "Reference point for moment computation, x coordinate"}, 
         {"solid.refpnty", "0", "Reference point for moment computation, y coordinate"}, 
         {"solid.refpntz", "0", "Reference point for moment computation, z coordinate"}, 
         {"root.relay.solid2.refpntx", "0", "Reference point for moment computation, x coordinate"}, 
         {"root.relay.solid2.refpnty", "0", "Reference point for moment computation, y coordinate"}, 
         {"root.relay.solid2.refpntz", "0", "Reference point for moment computation, z coordinate"}});
    model.result("pg27").label("Contact Pressure");
    model.result("pg27").set("data", "cpl2");
    model.result("pg27").set("looplevel", new int[]{201});
    model.result("pg27").set("showhiddenobjects", true);
    model.result("pg27").feature("surf1").label("Pressure Surface");
    model.result("pg27").feature("surf1").set("descr", "Penalty-based contact pressure for contacts");
    model.result("pg27").feature("surf1")
         .set("const", new String[][]{{"solid.refpntx", "0", "Reference point for moment computation, x coordinate"}, {"solid.refpnty", "0", "Reference point for moment computation, y coordinate"}, {"solid.refpntz", "0", "Reference point for moment computation, z coordinate"}});
    model.result("pg27").feature("surf1").set("resolution", "normal");
    model.result("pg37").label("Relay Displacement Contour 1");
    model.result("pg37").set("data", "cpl4");
    model.result("pg37").set("looplevel", new int[]{201});
    model.result("pg37").feature("con1").set("unit", "nm");
    model.result("pg37").feature("con1")
         .set("const", new String[][]{{"solid.refpntx", "0", "Reference point for moment computation, x coordinate"}, {"solid.refpnty", "0", "Reference point for moment computation, y coordinate"}, {"solid.refpntz", "0", "Reference point for moment computation, z coordinate"}});
    model.result("pg37").feature("con1").set("levelmethod", "levels");
    model.result("pg37").feature("con1").set("levels", "range(59.5,0.01,61)");
    model.result("pg37").feature("con1").set("resolution", "normal");
    model.result("pg32").label("Contact Force Function");
    model.result("pg32").set("data", "an1_ds1");
    model.result("pg32").set("solrepresentation", "solnum");
    model.result("pg32").set("titletype", "manual");
    model.result("pg32").set("title", "Penalty-Based Contact Pressure Function");
    model.result("pg32").set("xlabel", "Distance from Contact (m)");
    model.result("pg32").set("xlabelactive", true);
    model.result("pg32").set("ylabel", "Contact Pressure (Pa)");
    model.result("pg32").set("ylabelactive", true);
    model.result("pg32").set("axislimits", true);
    model.result("pg32").set("xmin", -2.3399339123171225E-10);
    model.result("pg32").set("xmax", "1e-9");
    model.result("pg32").set("ymin", -2065733.6861232428);
    model.result("pg32").set("ymax", 6.2065733686123244E7);
    model.result("pg32").feature("plot1").set("solrepresentation", "solnum");
    model.result("pg32").feature("plot1").set("descr", "an1(x)");
    model.result("pg32").feature("plot1").set("xdataexpr", "x");
    model.result("pg32").feature("plot1").set("xdataunit", "m");
    model.result("pg32").feature("plot1").set("xdatadescr", "x-coordinate");
    model.result("pg32").feature("plot1").set("smooth", "internal");
    model.result("pg32").feature("plot1").set("allowmaterialsmoothing", false);
    model.result("pg32").feature("plot1").set("resolution", "normal");
    model.result("pg34").label("Transient Displacement (solid)");
    model.result("pg34").set("edges", false);
    model.result("pg34").feature("surf1")
         .set("const", new String[][]{{"solid2.refpntx", "0", "Reference point for moment computation, x coordinate"}, {"solid2.refpnty", "0", "Reference point for moment computation, y coordinate"}, {"solid2.refpntz", "0", "Reference point for moment computation, z coordinate"}});
    model.result("pg34").feature("surf1").set("colortable", "RainbowLight");
    model.result("pg34").feature("surf1").set("resolution", "normal");
    model.result("pg34").feature("surf1").feature("def1").set("expr", new String[]{"u2", "v2", "w2"});
    model.result("pg34").feature("surf1").feature("def1").set("scaleactive", true);
    model.result("pg35").label("Transient Displacement-Time");
    model.result("pg35").set("xlabel", "Time (s)");
    model.result("pg35").set("ylabel", "Total displacement (nm)");
    model.result("pg35").set("xlabelactive", false);
    model.result("pg35").set("ylabelactive", false);
    model.result("pg35").feature("ptgr1").label("Point Graph");
    model.result("pg35").feature("ptgr1").set("unit", "nm");
    model.result("pg35").feature("ptgr1")
         .set("const", new String[][]{{"solid2.refpntx", "0", "Reference point for moment computation, x coordinate"}, {"solid2.refpnty", "0", "Reference point for moment computation, y coordinate"}, {"solid2.refpntz", "0", "Reference point for moment computation, z coordinate"}});
    model.result().export("anim2").label("Mode 1 Animation (No Effects)");
    model.result().export("anim2").set("giffilename", "../demo/mode1comsol.gif");
    model.result().export("anim2").set("fps", 20);
    model.result().export("anim2").set("sweeptype", "dde");
    model.result().export("anim2").set("maxframes", 20);
    model.result().export("anim2").set("options3d", true);
    model.result().export("anim2").set("legend3d", false);
    model.result().export("anim2").set("logo3d", false);
    model.result().export("anim2").set("antialias", false);
    model.result().export("anim2").set("fontsize", "9");
    model.result().export("anim2").set("customcolor", new double[]{1, 1, 1});
    model.result().export("anim2").set("background", "color");
    model.result().export("anim2").set("gltfincludelines", "on");
    model.result().export("anim2").set("title1d", "on");
    model.result().export("anim2").set("legend1d", "on");
    model.result().export("anim2").set("logo1d", "on");
    model.result().export("anim2").set("options1d", "on");
    model.result().export("anim2").set("title2d", "on");
    model.result().export("anim2").set("legend2d", "on");
    model.result().export("anim2").set("logo2d", "on");
    model.result().export("anim2").set("options2d", "off");
    model.result().export("anim2").set("title3d", "on");
    model.result().export("anim2").set("legend3d", "off");
    model.result().export("anim2").set("logo3d", "off");
    model.result().export("anim2").set("options3d", "on");
    model.result().export("anim2").set("axisorientation", "on");
    model.result().export("anim2").set("grid", "on");
    model.result().export("anim2").set("axes1d", "on");
    model.result().export("anim2").set("axes2d", "on");
    model.result().export("anim2").set("showgrid", "on");
    model.result().export("anim3").label("Mode 2 Animation (No Effects)");
    model.result().export("anim3").set("plotgroup", "pg6");
    model.result().export("anim3").set("giffilename", "../demo/mode2comsol.gif");
    model.result().export("anim3").set("fps", 20);
    model.result().export("anim3").set("sweeptype", "dde");
    model.result().export("anim3").set("maxframes", 20);
    model.result().export("anim3").set("options3d", true);
    model.result().export("anim3").set("legend3d", false);
    model.result().export("anim3").set("logo3d", false);
    model.result().export("anim3").set("antialias", false);
    model.result().export("anim3").set("fontsize", "9");
    model.result().export("anim3").set("customcolor", new double[]{1, 1, 1});
    model.result().export("anim3").set("background", "color");
    model.result().export("anim3").set("gltfincludelines", "on");
    model.result().export("anim3").set("title1d", "on");
    model.result().export("anim3").set("legend1d", "on");
    model.result().export("anim3").set("logo1d", "on");
    model.result().export("anim3").set("options1d", "on");
    model.result().export("anim3").set("title2d", "on");
    model.result().export("anim3").set("legend2d", "on");
    model.result().export("anim3").set("logo2d", "on");
    model.result().export("anim3").set("options2d", "off");
    model.result().export("anim3").set("title3d", "on");
    model.result().export("anim3").set("legend3d", "off");
    model.result().export("anim3").set("logo3d", "off");
    model.result().export("anim3").set("options3d", "on");
    model.result().export("anim3").set("axisorientation", "on");
    model.result().export("anim3").set("grid", "on");
    model.result().export("anim3").set("axes1d", "on");
    model.result().export("anim3").set("axes2d", "on");
    model.result().export("anim3").set("showgrid", "on");
    model.result().export("anim4").label("Mode 3 Animation (No Effects)");
    model.result().export("anim4").set("plotgroup", "pg7");
    model.result().export("anim4").set("giffilename", "../demo/mode3comsol.gif");
    model.result().export("anim4").set("fps", 20);
    model.result().export("anim4").set("sweeptype", "dde");
    model.result().export("anim4").set("maxframes", 20);
    model.result().export("anim4").set("options3d", true);
    model.result().export("anim4").set("legend3d", false);
    model.result().export("anim4").set("logo3d", false);
    model.result().export("anim4").set("antialias", false);
    model.result().export("anim4").set("fontsize", "9");
    model.result().export("anim4").set("customcolor", new double[]{1, 1, 1});
    model.result().export("anim4").set("background", "color");
    model.result().export("anim4").set("gltfincludelines", "on");
    model.result().export("anim4").set("title1d", "on");
    model.result().export("anim4").set("legend1d", "on");
    model.result().export("anim4").set("logo1d", "on");
    model.result().export("anim4").set("options1d", "on");
    model.result().export("anim4").set("title2d", "on");
    model.result().export("anim4").set("legend2d", "on");
    model.result().export("anim4").set("logo2d", "on");
    model.result().export("anim4").set("options2d", "off");
    model.result().export("anim4").set("title3d", "on");
    model.result().export("anim4").set("legend3d", "off");
    model.result().export("anim4").set("logo3d", "off");
    model.result().export("anim4").set("options3d", "on");
    model.result().export("anim4").set("axisorientation", "on");
    model.result().export("anim4").set("grid", "on");
    model.result().export("anim4").set("axes1d", "on");
    model.result().export("anim4").set("axes2d", "on");
    model.result().export("anim4").set("showgrid", "on");
    model.result().export("anim5").label("Mode 4 Animation (No Effects)");
    model.result().export("anim5").set("plotgroup", "pg8");
    model.result().export("anim5").set("giffilename", "../demo/mode4comsol.gif");
    model.result().export("anim5").set("fps", 20);
    model.result().export("anim5").set("sweeptype", "dde");
    model.result().export("anim5").set("maxframes", 20);
    model.result().export("anim5").set("options3d", true);
    model.result().export("anim5").set("legend3d", false);
    model.result().export("anim5").set("logo3d", false);
    model.result().export("anim5").set("antialias", false);
    model.result().export("anim5").set("fontsize", "9");
    model.result().export("anim5").set("customcolor", new double[]{1, 1, 1});
    model.result().export("anim5").set("background", "color");
    model.result().export("anim5").set("gltfincludelines", "on");
    model.result().export("anim5").set("title1d", "on");
    model.result().export("anim5").set("legend1d", "on");
    model.result().export("anim5").set("logo1d", "on");
    model.result().export("anim5").set("options1d", "on");
    model.result().export("anim5").set("title2d", "on");
    model.result().export("anim5").set("legend2d", "on");
    model.result().export("anim5").set("logo2d", "on");
    model.result().export("anim5").set("options2d", "off");
    model.result().export("anim5").set("title3d", "on");
    model.result().export("anim5").set("legend3d", "off");
    model.result().export("anim5").set("logo3d", "off");
    model.result().export("anim5").set("options3d", "on");
    model.result().export("anim5").set("axisorientation", "on");
    model.result().export("anim5").set("grid", "on");
    model.result().export("anim5").set("axes1d", "on");
    model.result().export("anim5").set("axes2d", "on");
    model.result().export("anim5").set("showgrid", "on");
    model.result().export("anim6").label("Mode 5 Animation (No Effects)");
    model.result().export("anim6").set("plotgroup", "pg9");
    model.result().export("anim6").set("giffilename", "../demo/mode5comsol.gif");
    model.result().export("anim6").set("fps", 20);
    model.result().export("anim6").set("sweeptype", "dde");
    model.result().export("anim6").set("maxframes", 20);
    model.result().export("anim6").set("options3d", true);
    model.result().export("anim6").set("legend3d", false);
    model.result().export("anim6").set("logo3d", false);
    model.result().export("anim6").set("antialias", false);
    model.result().export("anim6").set("fontsize", "9");
    model.result().export("anim6").set("customcolor", new double[]{1, 1, 1});
    model.result().export("anim6").set("background", "color");
    model.result().export("anim6").set("gltfincludelines", "on");
    model.result().export("anim6").set("title1d", "on");
    model.result().export("anim6").set("legend1d", "on");
    model.result().export("anim6").set("logo1d", "on");
    model.result().export("anim6").set("options1d", "on");
    model.result().export("anim6").set("title2d", "on");
    model.result().export("anim6").set("legend2d", "on");
    model.result().export("anim6").set("logo2d", "on");
    model.result().export("anim6").set("options2d", "off");
    model.result().export("anim6").set("title3d", "on");
    model.result().export("anim6").set("legend3d", "off");
    model.result().export("anim6").set("logo3d", "off");
    model.result().export("anim6").set("options3d", "on");
    model.result().export("anim6").set("axisorientation", "on");
    model.result().export("anim6").set("grid", "on");
    model.result().export("anim6").set("axes1d", "on");
    model.result().export("anim6").set("axes2d", "on");
    model.result().export("anim6").set("showgrid", "on");
    model.result().export("anim7").label("Mode 6 Animation (No Effects)");
    model.result().export("anim7").set("plotgroup", "pg10");
    model.result().export("anim7").set("giffilename", "../demo/mode6comsol.gif");
    model.result().export("anim7").set("fps", 20);
    model.result().export("anim7").set("sweeptype", "dde");
    model.result().export("anim7").set("maxframes", 20);
    model.result().export("anim7").set("options3d", true);
    model.result().export("anim7").set("legend3d", false);
    model.result().export("anim7").set("logo3d", false);
    model.result().export("anim7").set("antialias", false);
    model.result().export("anim7").set("fontsize", "9");
    model.result().export("anim7").set("customcolor", new double[]{1, 1, 1});
    model.result().export("anim7").set("background", "color");
    model.result().export("anim7").set("gltfincludelines", "on");
    model.result().export("anim7").set("title1d", "on");
    model.result().export("anim7").set("legend1d", "on");
    model.result().export("anim7").set("logo1d", "on");
    model.result().export("anim7").set("options1d", "on");
    model.result().export("anim7").set("title2d", "on");
    model.result().export("anim7").set("legend2d", "on");
    model.result().export("anim7").set("logo2d", "on");
    model.result().export("anim7").set("options2d", "off");
    model.result().export("anim7").set("title3d", "on");
    model.result().export("anim7").set("legend3d", "off");
    model.result().export("anim7").set("logo3d", "off");
    model.result().export("anim7").set("options3d", "on");
    model.result().export("anim7").set("axisorientation", "on");
    model.result().export("anim7").set("grid", "on");
    model.result().export("anim7").set("axes1d", "on");
    model.result().export("anim7").set("axes2d", "on");
    model.result().export("anim7").set("showgrid", "on");
    model.result().export("anim8").label("Quasi-Static Potential Side View");
    model.result().export("anim8").set("plotgroup", "pg23");
    model.result().export("anim8").set("alwaysask", true);
    model.result().export("anim8")
         .set("giffilename", "/Users/akashlevy/OneDrive - Levylab/Documents/Research/NEM-Relay-CAD/comsol/lol.gif");
    model.result().export("anim8").set("fps", 5);
    model.result().export("anim8").set("solnumtype", "inner");
    model.result().export("anim8").set("solnum", new int[]{1});
    model.result().export("anim8").set("maxframes", 20);
    model.result().export("anim8").set("options2d", true);
    model.result().export("anim8").set("synchronize", false);
    model.result().export("anim8").set("fontsize", "9");
    model.result().export("anim8").set("customcolor", new double[]{1, 1, 1});
    model.result().export("anim8").set("background", "color");
    model.result().export("anim8").set("gltfincludelines", "on");
    model.result().export("anim8").set("title1d", "on");
    model.result().export("anim8").set("legend1d", "on");
    model.result().export("anim8").set("logo1d", "on");
    model.result().export("anim8").set("options1d", "on");
    model.result().export("anim8").set("title2d", "on");
    model.result().export("anim8").set("legend2d", "on");
    model.result().export("anim8").set("logo2d", "on");
    model.result().export("anim8").set("options2d", "on");
    model.result().export("anim8").set("title3d", "on");
    model.result().export("anim8").set("legend3d", "on");
    model.result().export("anim8").set("logo3d", "on");
    model.result().export("anim8").set("options3d", "off");
    model.result().export("anim8").set("axisorientation", "on");
    model.result().export("anim8").set("grid", "on");
    model.result().export("anim8").set("axes1d", "on");
    model.result().export("anim8").set("axes2d", "on");
    model.result().export("anim8").set("showgrid", "on");
    model.result().export("anim9").label("Parasitic Extraction");
    model.result().export("anim9").set("plotgroup", "pg31");
    model.result().export("anim9").set("giffilename", "../demo/pex.gif");
    model.result().export("anim9").set("fps", 1);
    model.result().export("anim9").set("singlelooplevel", new int[]{1, 1});
    model.result().export("anim9").set("framesel", "all");
    model.result().export("anim9").set("options3d", true);
    model.result().export("anim9").set("legend3d", false);
    model.result().export("anim9").set("logo3d", false);
    model.result().export("anim9").set("synchronize", false);
    model.result().export("anim9").set("fontsize", "9");
    model.result().export("anim9").set("customcolor", new double[]{1, 1, 1});
    model.result().export("anim9").set("background", "color");
    model.result().export("anim9").set("gltfincludelines", "on");
    model.result().export("anim9").set("title1d", "on");
    model.result().export("anim9").set("legend1d", "on");
    model.result().export("anim9").set("logo1d", "on");
    model.result().export("anim9").set("options1d", "on");
    model.result().export("anim9").set("title2d", "on");
    model.result().export("anim9").set("legend2d", "on");
    model.result().export("anim9").set("logo2d", "on");
    model.result().export("anim9").set("options2d", "off");
    model.result().export("anim9").set("title3d", "on");
    model.result().export("anim9").set("legend3d", "off");
    model.result().export("anim9").set("logo3d", "off");
    model.result().export("anim9").set("options3d", "on");
    model.result().export("anim9").set("axisorientation", "on");
    model.result().export("anim9").set("grid", "on");
    model.result().export("anim9").set("axes1d", "on");
    model.result().export("anim9").set("axes2d", "on");
    model.result().export("anim9").set("showgrid", "on");
    model.result().export("anim10").set("plotgroup", "pg34");
    model.result().export("anim10").set("target", "player");
    model.result().export("anim10").set("solnumtype", "inner");
    model.result().export("anim10").set("solnum", new int[]{1});
    model.result().export("anim10").set("showframe", 25);
    model.result().export("anim10").set("shownparameter", "Time=5E-8 s, mu=0 Pa*s");
    model.result().export("anim10").set("options3d", true);
    model.result().export("anim10").set("fontsize", "12");
    model.result().export("anim10").set("customcolor", new double[]{1, 1, 1});
    model.result().export("anim10").set("background", "color");
    model.result().export("anim10").set("gltfincludelines", "on");
    model.result().export("anim10").set("title1d", "on");
    model.result().export("anim10").set("legend1d", "on");
    model.result().export("anim10").set("logo1d", "on");
    model.result().export("anim10").set("options1d", "on");
    model.result().export("anim10").set("title2d", "on");
    model.result().export("anim10").set("legend2d", "on");
    model.result().export("anim10").set("logo2d", "on");
    model.result().export("anim10").set("options2d", "off");
    model.result().export("anim10").set("title3d", "on");
    model.result().export("anim10").set("legend3d", "on");
    model.result().export("anim10").set("logo3d", "on");
    model.result().export("anim10").set("options3d", "on");
    model.result().export("anim10").set("axisorientation", "on");
    model.result().export("anim10").set("grid", "on");
    model.result().export("anim10").set("axes1d", "on");
    model.result().export("anim10").set("axes2d", "on");
    model.result().export("anim10").set("showgrid", "on");

    model.nodeGroup("grp15").label("Modal (No Effects)");
    model.nodeGroup("grp15").add("plotgroup", "pg5");
    model.nodeGroup("grp15").add("plotgroup", "pg6");
    model.nodeGroup("grp15").add("plotgroup", "pg7");
    model.nodeGroup("grp15").add("plotgroup", "pg8");
    model.nodeGroup("grp15").add("plotgroup", "pg9");
    model.nodeGroup("grp15").add("plotgroup", "pg10");
    model.nodeGroup("grp22").label("Parasitic Extraction (Off)");
    model.nodeGroup("grp22").add("plotgroup", "pg31");
    model.nodeGroup("dset1solidlgrp").label("Spring Constant");
    model.nodeGroup("dset1solidlgrp").add("plotgroup", "pg2");
    model.nodeGroup("dset1solidlgrp").add("plotgroup", "pg30");
    model.nodeGroup("dset1solidlgrp").add("plotgroup", "pg36");
    model.nodeGroup("grp14").label("Stress/Strain");
    model.nodeGroup("grp14").add("plotgroup", "pg1");
    model.nodeGroup("grp14").add("plotgroup", "pg4");
    model.nodeGroup("grp21").label("Quasi-Static Sweep");
    model.nodeGroup("grp21").add("plotgroup", "pg23");
    model.nodeGroup("grp21").add("plotgroup", "pg22");
    model.nodeGroup("grp21").add("plotgroup", "pg25");
    model.nodeGroup("grp21").add("plotgroup", "pg26");
    model.nodeGroup("grp21").add("plotgroup", "pg27");
    model.nodeGroup("grp21").add("plotgroup", "pg37");
    model.nodeGroup("grp21").add("plotgroup", "pg32");
    model.nodeGroup("grp24").label("Transient");
    model.nodeGroup("grp24").add("plotgroup", "pg34");
    model.nodeGroup("grp24").add("plotgroup", "pg35");
    model.nodeGroup("grp4").label("Anchor Via");
    model.nodeGroup("grp4").add("selection", "dif5");
    model.nodeGroup("grp4").add("selection", "adj34");
    model.nodeGroup("grp3").label("Body");
    model.nodeGroup("grp3").add("selection", "uni3");
    model.nodeGroup("grp3").add("selection", "adj8");
    model.nodeGroup("grp3").add("selection", "uni5");
    model.nodeGroup("grp3").add("selection", "box7");
    model.nodeGroup("grp19").label("Contact");
    model.nodeGroup("grp19").add("selection", "sel25");
    model.nodeGroup("grp19").add("selection", "sel26");
    model.nodeGroup("grp19").add("selection", "sel27");
    model.nodeGroup("grp19").add("selection", "sel28");
    model.nodeGroup("grp19").add("selection", "sel29");
    model.nodeGroup("grp19").add("selection", "sel30");
    model.nodeGroup("grp19").add("selection", "sel31");
    model.nodeGroup("grp19").add("selection", "sel32");
    model.nodeGroup("grp19").add("selection", "sel33");
    model.nodeGroup("grp19").add("selection", "sel34");
    model.nodeGroup("grp19").add("selection", "sel35");
    model.nodeGroup("grp19").add("selection", "sel36");
    model.nodeGroup("grp19").add("selection", "sel37");
    model.nodeGroup("grp19").add("selection", "sel38");
    model.nodeGroup("grp19").add("selection", "sel39");
    model.nodeGroup("grp19").add("selection", "sel40");
    model.nodeGroup("grp19").add("selection", "box8");
    model.nodeGroup("grp19").add("selection", "int1");
    model.nodeGroup("grp19").add("selection", "int2");
    model.nodeGroup("grp19").add("selection", "int3");
    model.nodeGroup("grp19").add("selection", "int4");
    model.nodeGroup("grp19").add("selection", "int5");
    model.nodeGroup("grp19").add("selection", "int6");
    model.nodeGroup("grp19").add("selection", "int7");
    model.nodeGroup("grp19").add("selection", "int8");
    model.nodeGroup("grp19").add("selection", "int9");
    model.nodeGroup("grp19").add("selection", "int10");
    model.nodeGroup("grp19").add("selection", "int11");
    model.nodeGroup("grp19").add("selection", "int12");
    model.nodeGroup("grp19").add("selection", "int13");
    model.nodeGroup("grp19").add("selection", "int14");
    model.nodeGroup("grp19").add("selection", "int15");
    model.nodeGroup("grp19").add("selection", "int16");
    model.nodeGroup("grp1").label("Contact Channel");
    model.nodeGroup("grp1").add("selection", "uni4");
    model.nodeGroup("grp1").add("selection", "sel1");
    model.nodeGroup("grp1").add("selection", "sel2");
    model.nodeGroup("grp1").add("selection", "sel3");
    model.nodeGroup("grp1").add("selection", "sel4");
    model.nodeGroup("grp1").add("selection", "sel5");
    model.nodeGroup("grp1").add("selection", "sel6");
    model.nodeGroup("grp1").add("selection", "sel7");
    model.nodeGroup("grp1").add("selection", "sel8");
    model.nodeGroup("grp1").add("selection", "adj4");
    model.nodeGroup("grp1").add("selection", "adj9");
    model.nodeGroup("grp1").add("selection", "adj10");
    model.nodeGroup("grp1").add("selection", "adj11");
    model.nodeGroup("grp1").add("selection", "adj12");
    model.nodeGroup("grp1").add("selection", "adj13");
    model.nodeGroup("grp1").add("selection", "adj14");
    model.nodeGroup("grp1").add("selection", "adj15");
    model.nodeGroup("grp1").add("selection", "adj16");
    model.nodeGroup("grp6").label("Dielectric");
    model.nodeGroup("grp6").add("selection", "box3");
    model.nodeGroup("grp6").add("selection", "dif1");
    model.nodeGroup("grp5").label("Gate");
    model.nodeGroup("grp5").add("selection", "box5");
    model.nodeGroup("grp5").add("selection", "adj6");
    model.nodeGroup("grp2").label("Global");
    model.nodeGroup("grp2").add("selection", "uni1");
    model.nodeGroup("grp2").add("selection", "adj35");
    model.nodeGroup("grp2").add("selection", "uni2");
    model.nodeGroup("grp2").add("selection", "adj36");
    model.nodeGroup("grp2").add("selection", "dif2");
    model.nodeGroup("grp2").add("selection", "adj7");
    model.nodeGroup("grp2").add("selection", "dif3");
    model.nodeGroup("grp2").add("selection", "adj2");
    model.nodeGroup("grp8").label("Landing Pads");
    model.nodeGroup("grp8").add("selection", "sel9");
    model.nodeGroup("grp8").add("selection", "sel10");
    model.nodeGroup("grp8").add("selection", "sel11");
    model.nodeGroup("grp8").add("selection", "sel12");
    model.nodeGroup("grp8").add("selection", "sel13");
    model.nodeGroup("grp8").add("selection", "sel14");
    model.nodeGroup("grp8").add("selection", "sel15");
    model.nodeGroup("grp8").add("selection", "sel16");
    model.nodeGroup("grp8").add("selection", "sel17");
    model.nodeGroup("grp8").add("selection", "sel18");
    model.nodeGroup("grp8").add("selection", "sel19");
    model.nodeGroup("grp8").add("selection", "sel20");
    model.nodeGroup("grp8").add("selection", "sel21");
    model.nodeGroup("grp8").add("selection", "sel22");
    model.nodeGroup("grp8").add("selection", "sel23");
    model.nodeGroup("grp8").add("selection", "sel24");
    model.nodeGroup("grp8").add("selection", "adj5");
    model.nodeGroup("grp8").add("selection", "adj18");
    model.nodeGroup("grp8").add("selection", "adj19");
    model.nodeGroup("grp8").add("selection", "adj20");
    model.nodeGroup("grp8").add("selection", "adj21");
    model.nodeGroup("grp8").add("selection", "adj22");
    model.nodeGroup("grp8").add("selection", "adj23");
    model.nodeGroup("grp8").add("selection", "adj24");
    model.nodeGroup("grp8").add("selection", "adj25");
    model.nodeGroup("grp8").add("selection", "adj26");
    model.nodeGroup("grp8").add("selection", "adj27");
    model.nodeGroup("grp8").add("selection", "adj28");
    model.nodeGroup("grp8").add("selection", "adj29");
    model.nodeGroup("grp8").add("selection", "adj30");
    model.nodeGroup("grp8").add("selection", "adj31");
    model.nodeGroup("grp8").add("selection", "adj32");
    model.nodeGroup("grp8").add("selection", "adj33");
    model.nodeGroup("grp7").label("Plate");
    model.nodeGroup("grp7").add("selection", "box2");
    model.nodeGroup("grp12").label("Channel Boundaries");
    model.nodeGroup("grp12").add("term41");
    model.nodeGroup("grp12").add("term42");
    model.nodeGroup("grp12").add("term43");
    model.nodeGroup("grp12").add("term44");
    model.nodeGroup("grp12").add("term45");
    model.nodeGroup("grp12").add("term46");
    model.nodeGroup("grp12").add("term47");
    model.nodeGroup("grp12").add("term48");
    model.nodeGroup("grp13").label("Landing Pad Boundaries");
    model.nodeGroup("grp13").add("term37");
    model.nodeGroup("grp13").add("term38");
    model.nodeGroup("grp13").add("term39");
    model.nodeGroup("grp13").add("term40");
    model.nodeGroup("grp13").add("term49");
    model.nodeGroup("grp13").add("term50");
    model.nodeGroup("grp13").add("term51");
    model.nodeGroup("grp13").add("term52");
    model.nodeGroup("grp13").add("term53");
    model.nodeGroup("grp13").add("term54");
    model.nodeGroup("grp13").add("term55");
    model.nodeGroup("grp13").add("term56");
    model.nodeGroup("grp13").add("term57");

    return model;
  }

  public static Model run8(Model model) {
    model.nodeGroup("grp13").add("term58");
    model.nodeGroup("grp13").add("term59");
    model.nodeGroup("grp13").add("term60");
    model.nodeGroup("grp17").label("Channel Boundaries 1");
    model.nodeGroup("grp17").add("term41");
    model.nodeGroup("grp17").add("term42");
    model.nodeGroup("grp17").add("term43");
    model.nodeGroup("grp17").add("term44");
    model.nodeGroup("grp17").add("term45");
    model.nodeGroup("grp17").add("term46");
    model.nodeGroup("grp17").add("term47");
    model.nodeGroup("grp17").add("term48");
    model.nodeGroup("grp18").label("Landing Pad Boundaries 1");
    model.nodeGroup("grp18").add("term37");
    model.nodeGroup("grp18").add("term38");
    model.nodeGroup("grp18").add("term39");
    model.nodeGroup("grp18").add("term40");
    model.nodeGroup("grp18").add("term49");
    model.nodeGroup("grp18").add("term50");
    model.nodeGroup("grp18").add("term51");
    model.nodeGroup("grp18").add("term52");
    model.nodeGroup("grp18").add("term53");
    model.nodeGroup("grp18").add("term54");
    model.nodeGroup("grp18").add("term55");
    model.nodeGroup("grp18").add("term56");
    model.nodeGroup("grp18").add("term57");
    model.nodeGroup("grp18").add("term58");
    model.nodeGroup("grp18").add("term59");
    model.nodeGroup("grp18").add("term60");
    model.nodeGroup("grp20").label("Contact Pressure");
    model.nodeGroup("grp20").add("bndl10");
    model.nodeGroup("grp20").add("bndl11");
    model.nodeGroup("grp23").label("Contact Pressure 2");
    model.nodeGroup("grp23").add("bndl10");
    model.nodeGroup("grp23").add("bndl11");

    model.param().set("matsw.relay.sw1", "1");

    return model;
  }

  public static void main(String[] args) {
    Model model = run();
    model = run2(model);
    model = run3(model);
    model = run4(model);
    model = run5(model);
    model = run6(model);
    model = run7(model);
    run8(model);
  }

}
